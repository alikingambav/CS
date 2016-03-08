function Battery(SendTo, command, DeviceName)
 UpdateList("devices",DeviceFileName)
 DeviceID = IDFromName(DeviceName, DeviceFileName) 
-- Determine battery level 
local handle = io.popen("curl 'http://" .. DomoticzIP .. ":" .. DomoticzPort .. "/json.htm?type=devices&rid=" .. DeviceID .. "' 2>/dev/null | /usr/local/bin/jq -r .result[].BatteryLevel") 
local BattLevel = string.gsub(handle:read("*a"), "\n", "") handle:close() -- Determine last update 
local handle = io.popen("curl 'http://" .. DomoticzIP .. ":" .. DomoticzPort .. "/json.htm?type=devices&rid=" .. DeviceID .. "' 2>/dev/null | /usr/local/bin/jq -r .result[].LastUpdate")
 local LastUpdate = string.gsub(handle:read("*a"), "\n", "") handle:close() 
print(DeviceName .. ' batterylevel is ' .. BattLevel .. "%") 
-- The following commented line won't work, as this script is running under Telegram not Domoticz
 -- so all interaction needs to be via Json as the Domoticz Lua variable are not avaialble to you
 -- difference = timedifference(otherdevices_lastupdate[DeviceName]) / 3600 
send_msg(SendTo,DeviceName..' battery level was '..BattLevel..' when last seen '..LastUpdate,ok_cb,false)
 end
local function run(msg)
  if msg.text == 'Test' then
     return DomoticzIP
  end
end

return {
   patterns = { "^Test$" },
   run = run
}
