local function lock_group_link(msg, data, target)
if not is_momod(msg) then
    return "For moderators only!"
  end
  local group_link_lock = data[tostring(target)]['settings']['lock_link']
  if group_arabic_lock == 'yes' then
    return 'Link is already locked'
  else
    data[tostring(target)]['settings']['lock_link'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'link has been locked'
  end
end
local function unlock_group_link(msg, data, target)
if not is_momod(msg) then
    return "For moderators only!"
  end
  local group_link_lock = data[tostring(target)]['settings']['lock_link']
  if group_arabic_lock == 'no' then
    return 'Link is already unlocked'
  else
    data[tostring(target)]['settings']['lock_link'] = 'no'
    save_data(_config.moderation.data, data)
    return 'link has been unlocked'
  end
end
local function run(msg, matches)
local data = load_data(_config.moderation.data)
local name_log = user_print_name(msg.from)
if matches[1] == 'Lock'or matches [1] == 'Lock'then
if matches[2] == 'link'then
savelog(msg.to.id, name_log.." ["..msg.from.id.."] locked link ")
        return lock_group_link(msg, data, target)
end
elseif matches[1] == 'Unlock'or matches [1] == 'unlock'then
if matches[2] == 'link'then
savelog(msg.to.id, name_log.." ["..msg.from.id.."] locked link ")
        return unlock_group_link(msg, data, target)
end
end
-------
if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  if data[tostring(msg.to.id)]['settings']['lock_link'] then
    if data[tostring(msg.to.id)]['settings']['lock_link'] == 'yes' then
      if antilink[msg.from.id] == true then 
        return
      end
      send_large_msg("chat#id".. msg.to.id , "link is not allowed here")
      local name = user_print_name(msg.from)
      savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (link was locked) ")
      chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id,ok_cb,false)
		  antilink[msg.from.id] = true
      return
    end
  end
-------
  return
end
local function cron()
  antiarabic = {} -- Clear antiarabic table 
end
return {
patterns = {
"^([Ll]ock) (link)$",
"^([Uu]nlock) (link)$",
".com",
"http://",
"https://",
"adf.ly"
},
 run = run,
 cron = cron
}
