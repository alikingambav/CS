local function run(msg)
  if msg.text == "kalkal on" or msg.text == "Kalkal on" then
    if is_momod(msg) then
      data[tostring(msg.to.id)]['settings']['kalkal'] = 'on'
      data[tostring(msg.to.id)]['settings']['welcome'] = 'no'
      save_data(_config.moderation.data, data)
      return "👿"
    end
  elseif msg.text == "kalkal off" or msg.text == "Kalkal off" then
    if is_momod(msg) then
      data[tostring(msg.to.id)]['settings']['kalkal'] = 'off'
      data[tostring(msg.to.id)]['settings']['welcome'] = 'yes'
      save_data(_config.moderation.data, data)
      return "کلکل خاموش شد"
    end
  end


end
return {
   patterns = {
      "^[KK]alkal on$",
      "^[Kk]alkal off$"
   },
   run = run
}
