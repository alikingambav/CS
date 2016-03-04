local function run(msg, matches)


if not is_momod(msg) or not is_sudo(msg) or not is_admin(msg) then
	return "Mods Only!"
	else
    if matches[1] == 'Warn' or matches[1] == 'warn' then
      if matches[2] == 'sticker' then
        if welcome_stat ~= 'warn' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'warn'
          save_data(_config.moderation.data, data)
        end
        return '[Alredy Enabled]\nSticker Sender will be warned first, then kicked for second Sticker.'
      elseif matches[1] == 'lock' or matches[1] == 'Lock' then
        if welcome_stat ~= 'yes' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'yes'
          save_data(_config.moderation.data, data)
        end
        return '[Already Enabled]Sticker Sender will be kicked!'
      elseif matches[1] == 'Unlock' or matches[1] == 'unlock' then
        if welcome_stat == 'no' then
          return '[Already Disabled]Nothing Will Happend If Sticker Sent!'
        else
          data[tostring(msg.to.id)]['settings']['sticker'] = 'no'
          save_data(_config.moderation.data, data)
          return 'Nothing Will Happend If Sticker Sent! '
        end
      end
    end
end
end


return {
     patterns = {
         "^([Ll]ock) (.*)$"
     },
run = run,
pre_process = pre_process
}
