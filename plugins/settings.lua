local function show_group_settingsmod(msg, data, target)
 	if not is_momod(msg) then
    	return "For moderators only!"
  	end
  	local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
     	if data[tostring(msg.to.id)]['settings']['flood_msg_max'] then
        	NUM_MSG_MAX = tonumber(data[tostring(msg.to.id)]['settings']['flood_msg_max'])
        	print('custom'..NUM_MSG_MAX)
      	else 
        	NUM_MSG_MAX = 5
      	end
    end
    local bots_protection = "Yes"
    if data[tostring(msg.to.id)]['settings']['lock_bots'] then
    	bots_protection = data[tostring(msg.to.id)]['settings']['lock_bots']
   	end
    local leave_ban = "no"
    if data[tostring(msg.to.id)]['settings']['leave_ban'] then
    	leave_ban = data[tostring(msg.to.id)]['settings']['leave_ban']
   	end
    local arabic = "no"
    if data[tostring(msg.to.id)]['settings']['lock_arabic'] then
    arabic = data[tostring(msg.to.id)]['settings']['lock_arabic']
    end
    local sticker = "no"
    if data[tostring(msg.to.id)]['settings']['sticker'] then
    sticker = data[tostring(msg.to.id)]['settings']['sticker']
    end
    local link = "no"
   if data[tostring(msg.to.id)]['settings']['lock_link'] then
    link = data[tostring(msg.to.id)]['settings']['lock_link']
    end
  local settings = data[tostring(msg.to.id)]['settings']
  local text = "Group settings:\nLock group name : "..settings.lock_name.."\nLock group photo : "..settings.lock_photo.."\nLock group member : "..settings.lock_member.."\nLock group leave : "..leave_ban.."\nLock bot : "..bots_protection.."\nLock Arabic : "..arabic.."\nLock sticker : "..sticker.."\nLock link : "..link.."\nflood sensitivity : "..NUM_MSG_MAX--.."\nPublic : "..public
  return text
end 
local function run(msg, matches)
local name_log = user_print_name(msg.from)
if matches[1] == 'settings' or matches[1] == 'Settings' then
      local target = msg.to.id
      savelog(msg.to.id, name_log.." ["..msg.from.id.."] requested group settings ")
      return show_group_settingsmod(msg, data, target)
    end	
end
return {
  patterns = {
"^([Ss]ettings)$"
},
  run = run
}

