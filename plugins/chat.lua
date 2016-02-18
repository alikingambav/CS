local function run(msg,matches)
local x = 45446970
local y = 136378403

if msg.text == "ARJ" then
	return "با باباییم چکار داری ؟ الان میارمش",
        chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
end
if msg.text == "A.R.J" then
	return "با باباییم چکار داری ؟ الان میارمش",
        chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
end
if msg.text == "hi" then
	return "سلام...  اگه میشه فارسی تایپ کن"
end
if msg.text == "ربات" then
        if msg.from.id == 163203426 then
                return "جووونم نفسم ؟ بگو سولمازی 😍"
        elseif msg.from.id == 45446970 then
                return "جونم بابایی؟"
        elseif msg.from.id == 136378403 then
                return "جونم عمو😍"
        elseif msg.from.id == 178392470 then
                return "جونم عشقم؟"
        else
	return "بله؟"
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
               return "چشم گلم"
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
if msg.text == "Difense" then
        return "با عمو جونم چکار داری ؟    الان میارمش",
        chat_add_user("chat#id"..msg.to.id, 'user#id'..y, ok_cb, false)
end
if msg.text == "difense" then
        return "با عمو جونم چکار داری ؟   الان میارمش",
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
        return "زاااااارتتتتت"
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
        return "عشق منو چکارش داری؟😡"
end
if msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(x) then
        return "سلام بابایی 😍 ، خوش اومدی ..."
elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(y) then
        return "سلام عمو 😍 ، خوش اومدی ..."
elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(x) then
        return "واااای باباییم رفت 😞"
elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(y) then
        return "واااای عمو جونم رفت 😞"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
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
                "^ARJ$",
                "^A.R.J$",
                "^[Dd]ifense$",
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
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
