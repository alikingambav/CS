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

if msg.text == "fgp" or msg.text == "Fgp" then
        if not is_sudo(msg) then
              return "این دستور فقط واسه سودو هاس...  کونت میخواره ؟😡"
        else
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
          end
elseif msg.text == "xgp" or msg.text == "Xgp" then
          if is_sudo(msg) then
                 chat_add_user("chat#id"..msg.to.id, 'user#id'..a, ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#203121015', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#134382546', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#138967302', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#142152614', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#162650071', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#203978538', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#190443546', ok_cb, false)
                 chat_add_user("chat#id"..msg.to.id, 'user#192439532', ok_cb, false)
          else
              return "این دستور فقط واسه سودو هاس...  کونت میخواره ؟😡"
          end
elseif msg.text == "Ufgp" or msg.text == "ufgp" then
        if not is_sudo(msg) then
              return "این دستور فقط واسه سودو هاس...  کونت میخواره ؟😡"
        else
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..b, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..c, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..d, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..e, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..f, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..g, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..h, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..i, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..j, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..k, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..l, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..m, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..n, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..o, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..p, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..q, ok_cb, false)
                 chat_del_user("chat#id"..msg.to.id, 'user#id'..r, ok_cb, false)
          end
end
end

return {
        description = "Fuck groups",
        usage = "fuck groups",
        patterns = {
             "^[Ff]gp$",
             "^[Xx]gp$",
             "^[Uu]fgp$"
             },
        run = run,
        pre_process = pre_process
        }
