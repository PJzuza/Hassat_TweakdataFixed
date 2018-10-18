if not BLT or 
	not BLT.Mods or
	not BLT.Mods.mods or
	not BLTUpdate or
	not BLT.Downloads or 
	not BLT.Downloads._downloads then
	return	
end

_G.UpdateThisMod = _G.UpdateThisMod or {}
UpdateThisMod._ModPath = UpdateThisMod._ModPath or ModPath
UpdateThisMod._SavePath = UpdateThisMod._SavePath or SavePath .. "UpdateThisMod.txt"
UpdateThisMod.Settings = UpdateThisMod.Settings or {}
UpdateThisMod.Caller = string.sub(debug.getinfo(1,'S').source,2)
UpdateThisMod.Time2Delay = Application:time() + 5
UpdateThisMod.Special_List = {}

function UpdateThisMod:Save()
	local file = io.open(self._SavePath, "w+")
	if file then
		file:write(json.encode(self.Settings))
		file:close()
	end
end

local UpdateThisModLog = function(txt)
	log('[UpdateThisModLog] ' .. tostring(txt))
end

function UpdateThisMod:Load()
	local file = io.open(self._SavePath, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all")) or {}) do
			self.Settings[k] = v
		end
		file:close()
	else
		self.Settings = {
			enable = true
		}
		self:Save()
	end
end

function UpdateThisMod:Add(data)
	self.Time2Delay = Application:time() + 3
	self.Settings[data.mod_id] = data.data
	self:Save()
end

function UpdateThisMod:Remove(data)
	self.Time2Delay = Application:time() + 3
	self.Settings[data.mod_id] = nil
	self:Save()
end

function UpdateThisMod:CompareVersion()
	self:Load()
	if not self.Settings then
		return
	end
	for mod_id, data in pairs(self.Settings) do
		if type(data.modworkshop_id) == 'number' then
			local inx, thisMod, mwsID, dl_url, info_url = nil, nil, data.modworkshop_id, (data.dl_url or nil), (data.info_url or nil)
			local mwsIDs = tostring(mwsID)
			for i, mod in pairs(BLT.Mods.mods) do
				local _dump = tostring(json.encode(mod.json_data))
				if _dump:find(mwsIDs) then
					thisMod = mod
					inx = i
					UpdateThisMod.Special_List[Idstring(mwsIDs):key()] = true
					UpdateThisMod.Special_List[Idstring(thisMod:GetId()):key()] = true
					if thisMod then
						local update = BLTUpdate:new(thisMod, 
							{
								identifier = mwsID,
								disallow_update = 'upd_mws_clbk' .. mwsID
							}
						)
						local url = {
							d = 'https://modworkshop.net/mydownloads/downloads/',
							i = 'https://manager.modworkshop.net/GetSingleDownload/'.. mwsID ..'.json',
							n = 'https://modworkshop.net/mydownloads.php?action=view_down&did='.. mwsID ..'#changelog'
						}
						if info_url then
							url.i = info_url
						end
						local oldUpd = thisMod:GetUpdate(mwsID)
						if oldUpd then
							if not oldUpd.enabled then
								return
							end
							update.enabled = oldUpd.enabled
							update._enabled = oldUpd._enabled
						end
						oldUpd = nil
						update._server_hash = '000'
						function update:DisallowsUpdate()
							if debug.getinfo(2,'n').name == 'download_all' then
								return false
							end
							return true
						end
						function update:ViewPatchNotes()
							if Steam:overlay_enabled() then
								Steam:overlay_activate("url", url.n)
							else
								os.execute("cmd /c start " .. url.n)
							end
						end
						if not BLT.Downloads.clbk_dwnld_fin_no_ver then
							function BLT.Downloads:clbk_dwnld_fin_no_ver(data, http_id)
								local download = BLT.Downloads:get_download_from_http_id(http_id)
								UpdateThisModLog(string.format("[Downloads] Finished download of %s (%s)", download.update:GetName(), download.update:GetParentMod():GetName()))
								BLT.Downloads._coroutine_ws = BLT.Downloads._coroutine_ws or managers.gui_data:create_fullscreen_workspace()
								download.coroutine = BLT.Downloads._coroutine_ws:panel():panel({})
								local save = function()
									local wait = function( x )
										for i = 1, (x or 5) do
											coroutine.yield()
										end
									end
									local temp_dir = Application:nice_path( download.update:GetInstallDirectory() .. "_temp" )
									local file_path = Application:nice_path( BLTModManager.Constants:DownloadsDirectory() .. tostring(download.update:GetId()) .. ".zip" )
									local temp_install_dir = Application:nice_path( temp_dir .. "/" .. download.update:GetInstallFolder() )
									local install_path = Application:nice_path( download.update:GetInstallDirectory() .. download.update:GetInstallFolder() )
									local extract_path = Application:nice_path( temp_install_dir .. "/" .. download.update:GetInstallFolder() )
									local cleanup = function()
										SystemFS:delete_file( temp_install_dir )
									end
									wait()
									SystemFS:make_dir( temp_dir )
									SystemFS:delete_file( file_path )
									cleanup()
									UpdateThisModLog("[Downloads] Saving to downloads...")
									download.state = "saving"
									wait()
									local f = io.open( file_path, "wb+" )
									if f then
										f:write( data )
										f:close()
									end
									UpdateThisModLog("[Downloads] Extracting...")
									download.state = "extracting"
									wait()
									unzip(file_path, temp_install_dir)
									wait()
									UpdateThisModLog("[Downloads] Going on unverified...")
									UpdateThisModLog("[Downloads] Removing old installation...")
									wait()
									SystemFS:delete_file(install_path)
									local move_success = file.MoveDirectory(extract_path, install_path)
									if not move_success then
										UpdateThisModLog("[Downloads] Failed to move installation directory!")
										download.state = "failed"
										cleanup()
										return
									end
									UpdateThisModLog("[Downloads] Complete!")
									download.state = "complete"
									cleanup()
								end
								download.coroutine:animate( save )
								MenuCallbackHandler['upd_mws_clbk'..mwsID] = nil
							end
						end
						MenuCallbackHandler['upd_mws_clbk'..mwsID] = function(this)
							local http_id = dohttpreq(url.d,
								callback(BLT.Downloads, BLT.Downloads, "clbk_dwnld_fin_no_ver"),
								callback(BLT.Downloads, BLT.Downloads, "clbk_download_progress")
							)
							local download = {
								update = update,
								http_id = http_id,
								state = "waiting"
							}
							table.insert(BLT.Downloads._downloads, download)
						end
						local function ParseInfo(text, id, message)
							if text:is_nil_or_empty() then
								return
							end
							if not text:find('version') then
								return
							end
							local req_upd = false
							local success = true
							local data = json.decode(text)
							if dl_url and info_url then
								data[mwsIDs] = data
								data[mwsIDs].download = dl_url
							end
							if data and data[mwsIDs] and data[mwsIDs].download and thisMod.version and data[mwsIDs].version then
								if tostring(thisMod.version) ~= tostring(data[mwsIDs].version) then
									url.d = url.d .. data[mwsIDs].download
									if dl_url then
										url.d = dl_url
									end
									req_upd = true
									BLT.Mods:clbk_got_update(update, true)
								else
									MenuCallbackHandler['upd_mws_clbk'..mwsIDs] = nil
								end
							else
								success = false
							end
							if message then
								local dialog = {}
								dialog.title = thisMod.name
								local bOk = {
									text = 'OK',
									cancel_button = true
								}
								dialog.button_list = {bOk}
								if success then
									if req_upd then
										dialog.text = 'An update is available!'
										local bDownload = {
											text = 'Open download manager',
											callback_func = function()
												managers.menu:open_node('blt_download_manager')
												end
										}	
										dialog.button_list = {bDownload, dialog.button_list[1]}
									else
										dialog.text = 'The latest version is installed.'
									end
								else
									dialog.text = 'Unable to check updates. No valid data received.'
								end
								managers.system_menu:show(dialog)
							end
						end
						BLT.Mods.mods[inx].GetUpdates = function()
							return {update}
						end
						BLT.Mods.mods[inx].CheckForUpdates = function(clbk)
							if BLT.Mods.mods[inx].upd_checking then
								return
							end
							BLT.Mods.mods[inx].upd_checking = true
							dohttpreq(url.i, function(text, id)
								BLT.Mods.mods[inx].upd_checking = nil
								ParseInfo(text, id, true)
							end)
						end
						BLT.Mods.mods[inx].IsCheckingForUpdates = function()
							return BLT.Mods.mods[inx].upd_checking or false
						end
						dohttpreq(url.i, function(text, id)
							ParseInfo(text, id)
						end)
					end
				end
			end
		end
	end
end

function UpdateThisMod:Loop()
	DelayedCalls:Add('DelayedMod_UpdateThisMod_Loop', 3, function()
		if UpdateThisMod.Time2Delay > Application:time() then
			UpdateThisMod:Loop()
		else
			UpdateThisMod:CompareVersion()
		end
	end)
end

Hooks:Add('MenuManagerOnOpenMenu', 'UpdateThisMod_RunInitNow', function(self, menu, ...)
	if menu == 'menu_main' then
		dofile(UpdateThisMod._ModPath .. 'Update_Those_Mods.lua')
	end
end)

function BLTModManager:Save()
	local save_data = {}
	save_data["mods"] = {}
	for index, mod in ipairs( self.mods ) do
		local updates = {}
		for index, update in ipairs( mod:GetUpdates() ) do
			updates[update:GetId()] = tostring(update:IsEnabled()):find('true') and true or false
		end
		save_data["mods"][mod:GetId()] = {
			["enabled"] = tostring(mod:IsEnabled()):find('true') and true or false,
			["safe"] = mod:IsSafeModeEnabled(),
			["updates"] = tostring(updates):find('true') and true or false
		}
	end
	Hooks:Call("BLTOnSaveData", save_data)
	local success = io.save_as_json( save_data, BLTModManager.Constants:ModManagerSaveFile() )
	log("[BLT] Save complete? " .. tostring(success))
	return success
end