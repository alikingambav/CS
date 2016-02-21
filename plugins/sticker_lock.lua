local function run(msg, matches)


if not is_momod(msg) then
	return "Mods Only!"
	else
    if matches[1] == 'sticker' or matches[1] == 'Sticker' then
      if matches[2] == 'warn' then
        if welcome_stat ~= 'warn' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'warn'
          save_data(_config.moderation.data, data)
        end
        return '[Alredy Enabled]\nSticker Sender will be warned first, then kicked for second Sticker.'
      end
      if matches[2] == 'kick' then
        if welcome_stat ~= 'kick' then
          data[tostring(msg.to.id)]['settings']['sticker'] = 'kick'
          save_data(_config.moderation.data, data)
        end
        return '[Already Enabled]Sticker Sender will be kicked!'
      end
      if matches[2] == 'ok' then
        if welcome_stat == 'ok' then
          return '[Already Disabled]Nothing Will Happend If Sticker Sent!'
        else
          data[tostring(msg.to.id)]['settings']['sticker'] = 'ok'
          save_data(_config.moderation.data, data)
          return 'Nothing Will Happend If Sticker Sent! '
        end
      end
    end
end
end


return {
     patterns = {
         "^([Ss]ticker) (.*)$"
     },
run = run,
pre_process = pre_process
}
