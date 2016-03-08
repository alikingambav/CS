
local function run(msg)
local receiver = get_receiver(msg)
local url = 'http://ipinfo.io/json'
  if msg.text == 'Test' then
     send_photos_from_url(receiver, url)
  end
end

return {
   patterns = { "^Test$" },
   run = run
}
