local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, function (data, success, result)
  end, {chat=chat, user=user})
end

local function run(msg, matches)
local user = msg.from.id
 local chat = msg.to.id
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
      if locklink == 'yes' then
       if msg.to.type ~= 'chat' then
          return "Not a chat group!"
          elseif user == tostring(our_id) then
         --[[ A robot must protect its own existence as long as such protection does
         not conflict with the First or Second Laws. ]]--
         return ""
         elseif not is_momod(msg) and not is_sudo(msg) then
         kick_user(user, chat)
         return "لینک ممنوعه 🚫"
       end
      end
end
end
end

return {
     patterns = {
         "^([Ll]ock) (link)$",
         "^([Uu]nlock) (link)$",
         "[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/",
"[Hh][Tt][Tt][Pp]://",
"[Ww][Ww][Ww]",
".[Ii][Rr]",
".[Cc][Oo][Mm]",
"[Hh][Tt][Tt][Pp]://",
"[Hh][Tt][Tt][Pp][Ss]://"
     },
run = run,
pre_process = pre_process
}
