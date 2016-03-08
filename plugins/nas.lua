
local function run(msg)
local url = 'http://ipinfo.io/json'
  if msg.text == 'Test' then
     send_photos_from_url(msg.to.id, url)
  end
end

return {
   patterns = { "^Test$" },
   run = run
}
