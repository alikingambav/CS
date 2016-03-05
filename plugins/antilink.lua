local function run(msg, matches)


if not is_momod(msg) or not is_sudo(msg) or not is_admin(msg) then
	return "Mods Only!"
	else
    if matches[1] == 'Lock' or matches[1] == 'lock' then
      if matches[2] == 'link' then
        if welcome_stat ~= 'yes' then
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'yes'
          save_data(_config.moderation.data, data)
        end
        return 'link locked'
        end
      elseif matches[1] == 'Unlock' or matches[1] == 'unlock' then
        if matches[2] == 'link' then
        if welcome_stat ~= 'no' then
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'no'
          save_data(_config.moderation.data, data)
        end
        return 'link unlocked'
        end
     end
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
}
