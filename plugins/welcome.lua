local function run(msg, matches)
  local wlc = data[tostring(msg.to.id)]['settings']['welcome']
  if matches[1] == 'welcome'or matches[1] == 'Welcome'then
    if matches[2] == 'yes' then
      if is_momod(msg) then
        data[tostring(msg.to.id)]['settings']['welcome'] = 'yes'
        save_data(_config.moderation.data, data)
        return "خوش آمد گویی روشن شد"
      end
    elseif matches[2] == 'no' then
      if is_momod(msg) then
        data[tostring(msg.to.id)]['settings']['welcome'] = 'no'
        save_data(_config.moderation.data, data)
        return "خوش آمد گویی خاموش شد"
      end
    end
  end
  if matches[1] == 'chat_add_user' or matches[1] == 'chat_add_user_link' then
    if wlc == 'yes' then
      return 'wlc 😊'
    end
  elseif matches[1] == 'chat_del_user' then
    if wlc == 'yes' then
      return 'bye 👋'
    end
  end
end

return {
   patterns = {
      "^([Ww]elcome) (yes)$",
      "^([Ww]elcome) (no)$",
      "^!!tgservice (chat_add_user)$",
      "^!!tgservice (chat_add_user_link)$",
      "^!!tgservice (chat_del_user)$",
   },
   run = run
}
