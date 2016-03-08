do

function run(msg, matches)
  local lat = matches[1]
  local lon = matches[2]
  local receiver = get_receiver(msg)

  local zoom = matches[3]
  local urls = {}
    local url1 = "http://maps.googleapis.com/maps/api/staticmap?zoom=" .. zoom .. "&size=1920x1080&maptype=roadmap&center=" .. lat .. "," .. lon .. "&markers=color:blue%7Clabel:X%7C" .. lat .. "," .. lon
    table.insert(urls, url1)
    local url2 = "http://maps.googleapis.com/maps/api/staticmap?zoom=" .. zoom .. "&size=1920x1080&maptype=satellite&center=" .. lat .. "," .. lon .. "&markers=color:blue%7Clabel:X%7C" .. lat .. "," .. lon
    table.insert(urls, url2)
  send_photos_from_url(receiver, urls)
  --return "www.google.es/maps/place/@" .. lat .. "," .. lon
end

return {
  description = "generates a map showing the given GPS coordinates", 
  usage = "!gps latitude,longitude: generates a map showing the given GPS coordinates",
  patterns = {"^[Gg]ps ([^,]*)[,%s]([^,]*) (%d+)$"}, 
  run = run 
}

end
