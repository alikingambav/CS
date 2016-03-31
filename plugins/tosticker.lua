local function tosticker(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = 'data/photos/pic.webp'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_document(get_receiver(msg), file, ok_cb, false)
    redis:del("pic")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.media then
       if msg.media.type == 'photo' and is_momod(msg) and redis:get("pic") then
        if redis:get("pic") == 'waiting' then
          load_photo(msg.id, tosticker, msg)
        end
       end
    end
    if matches[1] == "tosticker" or matches[1] == "Tosticker" and is_momod(msg) then
     redis:set("pic", "waiting")
     return 'Please send your photo now'
    end
end
return {
  patterns = {
 "^([Tt]osticker)$",
 "%[(photo)%]",
  },
  run = run,
}
