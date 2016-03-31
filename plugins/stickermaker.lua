local function load(msg, success, result)
  if success then
    local file = 'data/photos/stickerpacking.png'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_document("user#429000", file, ok_cb, false)
    redis:set("photo", "loaded")
  else
    print('Error downloading: '..msg.id)
  end
end

local function run(msg, matches)
  local sti = "user#429000"
  if msg.text == "make sticker" or msg.text == "Make sticker" then
    --if redis:get("klid") ~= "running" then
      --redis:set("klid", "running")
      redis:set("userid", msg.from.id)
      if msg.to.type == "user" then
        send_large_msg(sti, "/newpack")
        redis:set("newid", "user#"..msg.from.id)
      elseif msg.to.type == "chat" then
        send_large_msg(sti, "/newpack")
        redis:set("newid", "chat#"..msg.to.id)
      end
    else
      return "درحال حاضر قادر به انجام این دستور نیستم ، بعدا امتحان کن"
    end
  end
  if msg.from.id == 429000 then
    if msg.text == "Yay! A new stickers pack. How are we going to call it? Please choose a name for your pack." then
      send_large_msg(sti, redis:get("userid"))
    end
    if msg.text == [[Alright! Now send me an emoji that corresponds to your first sticker.

You can list several emoji in one message, but I recommend using no more than two per sticker.]] then
      redis:set("sheklak", "waiting")
      send_large_msg(redis:get("newid"), "خب حالا یه شکلک بفرست")
    end
    if msg.text == [[Thanks! Now send me the sticker. The image file should be in PNG format with a transparent layer and must fit into a 512x512 square (one of the sides must be 512px and the other 512px or less).

The sticker should use white stroke and shadow, exactly like in this .PSD example https://telegram.org/img/StickerExample.psd.

I recommend using Telegram for Web/Desktop when uploading stickers.]] then
      redis:del("sheklak")
      send_large_msg(redis:get("newid"), "خب حالا عکس رو بفرست ، سایز عکس باید حداکثر 512 در 512 باشه")
      redis:set("photo", "waiting")
    end
    if redis:get("photo") == "loaded" then
      if msg.text == [[Please send me your sticker image as a file.]] then
        send_large_msg(redis:get("newid"), "خطا ، لطفا عکس را دوباره بفرستید")
      elseif matches[1] == "Congratulations." then
        redis:del("photo")
        redis:set("sheklak", "waiting")
        return "استیکر اضافه شد ، برای اضافه کردن استیکر بعدی اول یک شکلک بفرستید. \nو یا برای تکمیل کار خود ، کلمه ی finish packing را ارسال کنید."
      end
    end
    if redis:get("fin") == "t" then
      if msg.text == [[Please provide a short name for your stickerpack. I'll use it to create a link that you can share with friends and followers.

For example, this set has the short name 'Animals': https://telegram.me/addstickers/Animals]]
        send_large_msg(redis:get("newid"), "حالا یه اسم واسه پک استیکرت انتخاب کن"
        redis:del("fin")
        redis:set("name", "t")
      end
    end
    if redis:get("name") == "t" then
      if msg.text == [[Sorry, this short name is already taken.]] then
        send_large_msg(redis:get("newid"), "این اسم قبلا انتخاب شده ، لطفا یک اسم دیگه انتخاب کنید")
      elseif matches[1] == "Kaboom!" then
        redis:del("name")
        send_large_msg(redis:get("newid"), "استیکر پک شما ساخته شد. \nhttps://telegram.me/addstickers/"..msg.teend
        send_large_msg(sti, "/cancel")
        redis:del("newid")
        --redis:del("klid")
      end
    end
  end
  if msg.from.id == redis:get("userid") then
    if redis:get("sheklak") == "waiting" then
      if msg.text == "Finish packing" or msg.text == "finish packing" then
        send_large_msg(sti, "/publish")
        redis:del("sheklak")
        redis:set("fin", "t")
      else
        send_large_msg(sti, msg.text)
      end
    end
    elseif redis:get("photo") == "waiting" then
      if msg.type == "photo" then
        load_photo(msg.id, load, msg)
      end
    elseif redis:get("name") == "t" then
      send_large_msg(sti, msg.text)
    end
  end
end
return {
  patterns = {
	"^(.*)$",
	"%[(photo)%]",
        "^(Kaboom!)$",
        "^(Congratulations.)$"
  },
  run = run
}
