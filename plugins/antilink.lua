local function run(msg, matches)


if not is_momod(msg) or not is_sudo(msg) or not is_admin(msg) then
	return "Mods Only!"
	else
        if matches[1] == 'lock' or matches[1] == 'Lock' then
        if matches[2] == 'link' then
        if welcome_stat ~= 'yes' then
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'yes'
          save_data(_config.moderation.data, data)
        end
        return 'link locked'
        end
      elseif matches[1] == 'Unlock' or matches[1] == 'unlock' then
           if matches[2] == 'link' then
        if welcome_stat == 'no' then
          return 'link unlocked'
        else
          data[tostring(msg.to.id)]['settings']['lock_link'] = 'no'
          save_data(_config.moderation.data, data)
          return 'link unlocked'
        end
      end
    end
end
end


return {
     patterns = {
         "^([Ll]ock) (link)$",
         "^([Uu]nlock) (link)$"
     },
run = run,
pre_process = pre_process
}
