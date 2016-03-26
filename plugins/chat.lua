local function run(msg,matches)
local x = 45446970
local y = 136378403

if msg.text == "hi" then
	return "سلام...  اگه میشه فارسی تایپ کن"
end
if msg.text == "اوره" then
        return "آرش جق زده کوره 😂"
end
if msg.text == "ربات" then
        if msg.from.id == 199235827 then
                return "چی میخوای ؟"
        elseif msg.from.id == 136378403 then
                return "جونم عمو😍"
        elseif msg.from.id == 178392470 then
                return "جونم عشقم؟"
        elseif msg.from.id == 186284458 then
                return "جونم زن عمو؟😍"
        elseif msg.from.id == 167609479 then
                return "جونم علی؟"
        elseif msg.from.id == 91175921 then
                return "جونم منصوره😍😊"
        elseif msg.from.id == 103631007 then
                return "جونم محمد😜😍"
        elseif msg.from.id == 153662106 then
                return "جونم مامان شری ؟ 😍😘"
        elseif msg.from.id == 168902576 then
                return "جونم زن عمو 😍😘"
        else
	return "بله؟"
        end
end
if msg.text == "منصوره" then
        if msg.from.id ~= 91175921 then
        return "با منصوره جونم چکار داری"
        end
end
if msg.text == "فدات بابات" then
        if msg.from.id == 45446970 then
        return "هستم باهات😉"
end
end
if msg.text == "سلام" then
        if msg.from.id == 91175921 then
        return "سلام منصوره جون 😙"
        end
end
if msg.text == "Salam" then
	return "سلام علیکم ، فارسی تایپ کن"
end
if msg.text == "salam" then
	return "و علیکومو سلام ، فارسی تایپ کن لطفا"
end
if msg.text == "bashe" then
	return "تکون نخور لاشه"
end
if msg.text == "Bashe" then
	return "بشین چشات وا شه"
end
if msg.text == "bot" then
	return "بله ؟"
end
if msg.text == "spam" then
	return "spam"
end
if msg.text == "Spam" then
        return "Spam"
end
if msg.text == "kooni" then
	return "فحش نده"
end
if msg.text == "suck it" then
	return "مودب باش"
end
if msg.text == "؟" then
	return "بله ؟"
end
if msg.text == "bye" then
	return "بای عشقم"
end
if msg.text == "Bye" then
	return "خدافظ ، مواظب زیباییت باش"
end
if msg.text == "گه نخور" then
        if msg.from.id == 163203426 then
               return "خفه باو"
        else
        return "من تو رو نمیخورم"
        end
end
if msg.text == "کس ننت" then
	return "با مِیمَنَت ، اینم سند ، تو شرتو کرستِ ننت"
end
if msg.text == "ببخشید" then
	return "خدا ببخشه"
end
if msg.text == "بای" then
        return "خدافظ ، مراقب زیباییات باش."
end
if msg.text == "کسکش" then
        return "فحش نده 😡"
end
if msg.text == "خستم" then
        return "خسته نباشی دلاور"
end
if msg.text == "خیلی خستم" then
        return "خسته نباشی پهلوون"
end
if msg.text == "Difense" or msg.text == "difense" then 
        return "با عمو جونم چکار داری ؟    الان میارمش",
        chat_add_user("chat#id"..msg.to.id, 'user#id'..y, ok_cb, false)
end
if msg.text == "جووووون" then
        return "زاااارت"
end
if msg.text == "جوووون" then
        return "زاااارت"
end
if msg.text == "جووون" then
        return "زاااارت"
end
if msg.text == "عاشقتم" then
   if msg.from.id == 91175921 then
        return "منم عاشقتم نفس بانو 😍😘"
   else
        return "زاااااارتتتتت"
end
end
if msg.text == "😍😍😍😍" then
        return "زاااارتتتت"
end
if msg.text == "😍😍😍" then
        return "زاااارتتتت"
end
if msg.text == "💋💋💋💋💋" then
        return "زززززااااااررررررتتتتتت"
end
if msg.text == "💋💋💋💋" then
        return "زززززااااااررررررتتتتتت"
end
if msg.text == "💋💋💋" then
        return "زززززااااااررررررتتتتتت"
end
if msg.text == "تو باید مال من باشی ... تو لایق بهترینایی" then
        return "زززززززاااااااااااررررررررررتتتتتتتتتت...... ینی واااااقعاااااااا زااااارت.......یکی سیفونو بکشههههه"
end
if msg.text == "سولماز" then
        return "هعیییییی"
end
if msg.action.type == "chat_add_user" and msg.action.user.id == 91175921 then
        return "خوشومدی منصوره جونم😃"
elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(y) then
        return "سلام عمو 😍 ، خوش اومدی ..."
elseif msg.action.type == "chat_del_user" and msg.action.user.id == 91175921 then
        return "منصوره هم رفت 😑"
elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(y) then
        return "واااای عمو جونم رفت 😞"
elseif msg.action.type == "chat_add_user" and msg.action.user.id == 153662106 then
        return "سلام مامان 😍 ، خوش اومدی ..."
elseif msg.action.type == "chat_del_user" and msg.action.user.id == 153662106 then
        return "وااااااای....  مامان جونم رفت  😢😢😢"
end
if msg.text == "کس نگو" then
  return " راست میگه دیگه کس نگو 😒"
 end
if msg.text == "چت نکنید" then
  return "چت نکنید دیگه چقد زر میزنید 😡"
 end
if msg.text == "چت ممنوع" then
  return "آقا چت ممنوعه ساکت باشید!"
 end
if msg.text == "چطورید" then
  return "مرسی تو چطوری؟"
end
if msg.text == "کیر" then
  return "تو کونت😐"
end
if msg.text == "kir" then
  return "تو کونت😐"
end
if msg.text == "هه" then
  return "کیره خر"
  end
if msg.text == "bk" then
  return "Be Kiram ke be Kiret"
end


end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
                "^[bB][kK]$",
                "^هه$",
                "^کیر$",
                "^چطورید$",
                "^چت ممنوع$",
                "^چت نکنید$",
                "^کس نگو$",
                "^!!tgservice (.+)$",
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Ss]pam$",
		"^[Bb]ot$",
		"^[Uu]mbrella$",
		"^[Bb]ye$",
		"^?$",
		"^[Ss]alam$",
                "^[Gg]oh nakhor$",
                "^sik :D$",
                "^[Bb]ashe$",
                "^[Dd]ifense$",
                "^سلام$",
                "^منصوره$",
                "^فدات بابات$",
                "^گه نخور$",
                "^ربات$",
                "^کس ننت$",
                "^ببخشید$",
                "^بای$",
                "^کسکش$",
                "^خستم$",
                "^خیلی خستم$",
                "^جووووون$",
                "^جوووون$",
                "^جووون$",
                "^عاشقتم$",
                "^سولماز",
                "^😍😍😍😍$",
                "^😍😍😍$",
                "^💋💋💋💋💋$",
                "^💋💋💋💋$",
                "^💋💋💋$",
                "^تو باید مال من باشی ... تو لایق بهترینایی$",
                "^اوره$"
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
