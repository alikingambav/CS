local function load(msg, success, result)
  if success then
    local file = 'data/photos/stickerpacking.png'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_document("user#429000", file, ok_cb, false)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end

local function run(msg)
  local sti = "user#429000"
  if msg.text == "make sticker" or msg.text == "Make sticker" then
    if redis:get("klid) ~= "running" then
      redis:set("klid", "running")
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
      redis:set("s", "new")
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
  end
  if msg.from.id == redis:get("userid") then
    if redis:get("sheklak") == "waiting" then
      send_large_msg(sti, msg.text)
    end
    elseif redis:get("photo") == "waiting" then
      if msg.type == "photo" then
        load_photo(msg.id, load, msg)
      end
    end
