local function run(msg)
local a = 125775990
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
local r = 180503834

if msg.text == "fuckgp" or msg.text == "Fuckgp" then
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..a, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..b, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..c, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..d, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..e, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..f, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..g, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..h, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..i, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..j, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..k, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..l, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..m, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..n, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..o, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..p, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..q, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..r, ok_cb, false)
elseif msg.text == "fgp" or msg.text == "Fgp" then

                 chat_add_user("chat#id"..msg.to.id, 'user#id'..a, ok_cb, false)
end
end

return {
        description = "Fuck groups",
        usage = "fuck groups",
        patterns = {
             "^[Ff]gp$",
             "^[Ff]uckgp$"
             },
        run = run,
        pre_process = pre_process
        }
