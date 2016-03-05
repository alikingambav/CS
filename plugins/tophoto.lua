local function tosticker(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = 'data/stickers/'..msg.from.id..'.jpg'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_document(get_receiver(msg), file, ok_cb, false)
    data[tostring(msg.to.id)]['settings']['stf'] = 'off'
    save_data(_config.moderation.data, data)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)
local stf = data[tostring(msg.to.id)]['settings']['stf']
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.media then
      	if msg.media.type == 'document' and is_momod(msg) and stf == 'waiting' then
              load_document(msg.id, tosticker, msg)
      	end
    end
    if matches[1] == "tophoto" and is_momod(msg) then
    data[tostring(msg.to.id)]['settings']['stf'] = 'waiting'
    save_data(_config.moderation.data, data)
    	return 'Please send your sticker now'
    end
end
return {
  patterns = {
	"^([Tt]ophoto)$",
	"%[(document)%]",
  },
  run = run,
}
