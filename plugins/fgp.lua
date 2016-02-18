do

local function run(msg)

local a = 180503834
local b = 198725287
local c = 196763845
local d = 180178691
local e = 183774950
local f = 170813594
local g = 146967516
local h = 139702397
local i = 194614519
local j = 177256701
local k = 190654360
local l = 180803616
local m = 182055561
local n = 181931593
local o = 181931593
local p = 191871309
local q = 172916552
local r = 125775990

      if msg.text == "fgp" or msg.text == "Fgp" then
                 chat_add_user('chat#id'..msg.to.id, 'user#id'..a, ok_cb, false),
      end
end

return {
  description = "fuck gp",

  usage = "fgp : add fucher bots",
  patterns = {
    "^[Ff]gp$"

  },
  run = run
}

end
