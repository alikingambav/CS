local function run(msg, matches)
local locklink = data[tostring(msg.to.id)]['settings']['lock_link']
if not is_momod(msg) or not is_sudo(msg) or not is_admin(msg) then
	return "Mods Only!"
	else
        if matches[1] == 'lock' or matches[1] == 'Lock' then
        if matches[2] == 'link' then
        if locklink ~= 'yes' then
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'yes'
          save_data(_config.moderation.data, data)
         end
        return 'link locked'
        end
      elseif matches[1] == 'Unlock' or matches[1] == 'unlock' then
           if matches[2] == 'link' then
          if locklink ~= 'no' then
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'no'
          save_data(_config.moderation.data, data)
         end
         return 'link unlocked'
        end
      end
end
if not is_momod(msg) and msg.type = 'chat' then
chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
return  'لینک ممنوعه 🚫'
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
pre_process = pre_process
}
