do

function run(msg, matches)
  local lat = matches[1]
  local lon = matches[2]
  local receiver = get_receiver(msg)

  local zooms = {16, 18}
  local urls = {}
  for i = 1, #zooms do
    local zoom = zooms[i]
    local url1 = "http://maps.googleapis.com/maps/api/staticmap?zoom=" .. zoom .. "&size=1024x768&maptype=roadmap&center=" .. lat .. "," .. lon .. "&markers=color:blue%7Clabel:X%7C" .. lat .. "," .. lon
    table.insert(urls, url1)
    local url2 = "http://maps.googleapis.com/maps/api/staticmap?zoom=" .. zoom .. "&size=1024x768&maptype=satellite&center=" .. lat .. "," .. lon .. "&markers=color:blue%7Clabel:X%7C" .. lat .. "," .. lon
    table.insert(urls, url2)
  end
  send_photos_from_url(receiver, urls)
  --return "www.google.es/maps/place/@" .. lat .. "," .. lon
end

return {
  description = "generates a map showing the given GPS coordinates", 
  usage = "!gps latitude,longitude: generates a map showing the given GPS coordinates",
  patterns = {"^[Gg]ps ([^,]*)[,%s]([^,]*)$"}, 
  run = run 
}

end
