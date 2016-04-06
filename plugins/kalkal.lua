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
  if data[tostring(msg.to.id)]['settings']['kalkal'] == "on" then
    if msg.text == "سلام" or msg.text == "slm" then
      return "سلامو کیر خر"
    end
    if msg.text == "خخخ" or msg.text == "خخخخ" then
      return "مگه کیرمو کردم تو کونت که میخندی؟"
    end
    if msg.text == "خخخخخ" or msg.text == "خخخخخخ" then
      return "کیر😕"
    end
    if msg.text == "خخخخخخخ" or msg.text == "خخخخخخخخ" or msg.text == "خخخخخخخخخ" then
      return "بخند تا دنیا به کس ننت بخنده"
    end
    if msg.text == "گه نخور" or msg.text == "گو نخور" or msg.text == "گو نخر" then
      return "من تو رو نمیخورم"
    end
    if msg.text == "کیر" then
      return "تو کونت"
    end
    if msg.text == "کییر" or msg.text == "کیییر" or msg.text == "کیرر" then
      return "تو کس عمت"
    end
    if msg.text == "لاشی" then
      return "سرش باشی"
    end
    if msg.text == "ربات" then
      return "ربات بیفته روت"
    end
    if msg.text == "😂" or msg.text == "😂😂" or msg.text == "😂😂😂" then
      return "نخند توش میسُره 😕"
    end
    if msg.text == "😂😂😂😂" or msg.text == "😂😂😂😂😂" or msg.text == "😂😂😂😂😂😂" then
      return "نخند آبم اومد 😂💦💦💦"
    end
    if msg.text == "❤️" or msg.text == "❤️❤️" or msg.text == "❤️❤️❤️" then
      return "قلب نزار حشری میشم"
    end
    if msg.text == "❤️❤️❤️❤️" or msg.text == "❤️❤️❤️❤️❤️" or msg.text == "❤️❤️❤️❤️❤️❤️" then
      return "وقتی قلب میزاری من حشری میشم"
    end
    if msg.text == "بکیرم" or msg.text == "به کیرم" then
      return "بخواب به زیرم 😏"
    end
  end


end
return {
   patterns = {
      "^[Kk]alkal on$",
      "^[Kk]alkal off$",
      "^سلام$",
      "^slm$",
      "^خخخ$",
      "^خخخخ$",
      "^خخخخخ$",
      "^خخخخخخ$",
      "^خخخخخخخ$",
      "^خخخخخخخخ$",
      "^خخخخخخخخخ$",
      "^گه نخور$",
      "^گو نخور$",
      "^گو نخر$",
      "^کیر$",
      "^کییر$",
      "^کیییر$",
      "^کیرر$",
      "^لاشی$",
      "^ربات$",
      "^😂$",
      "^😂😂$",
      "^😂😂😂$",
      "^😂😂😂😂$",
      "^😂😂😂😂😂$",
      "^😂😂😂😂😂😂$",
      "^❤️$",
      "^❤️❤️$",
      "^❤️❤️❤️$",
      "^❤️❤️❤️❤️$",
      "^❤️❤️❤️❤️❤️$",
      "^❤️❤️❤️❤️❤️❤️$",
      "^به کیرم$",
      "^بکیرم$",
   },
   run = run
}
