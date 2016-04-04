local function run(msg)
  if matches[1] == "on" then
    if is_momod(msg) then
      data[tostring(msg.to.id)]['settings']['kalkal'] = 'on'
      data[tostring(msg.to.id)]['settings']['welcome'] = 'no'
      save_data(_config.moderation.data, data)
      return "👿"
    end
  elseif matches[1] == "off" then
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
      "^kalkal (on)$",
      "^kalkal (off)$"
   },
   run = run
}
