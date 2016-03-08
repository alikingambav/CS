
local function run(msg, matches)
local receiver = get_receiver(msg)
local url = 'http://ipinfo.io/json'
  if matches[1] == 'Test' then
     --send_photos_from_url(receiver, url)
     return url
  end
end

return {
   patterns = { "^(Test)$" },
   run = run
}
