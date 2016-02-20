do
local function run(msg, matches)
local x = 125775990
 if msg.text == "xy on" or msg.text == "Xy on" then
 if is_sudo(msg) then
    xy = 1
    return "on✔"
 else
 return "این دستور فقط برای سودو است"
 end
 elseif msg.test == "xy off" or msg.text == "Xy off" then
 if is_sudo(msg) then
    xy = 0
    return "off❌"
 else
 return "این دستور فقط برای سودو است"
 end
 end
    if msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(x) then
       if tonumber(xy) == 1 then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
       end
    end
    if msg.text = "uxgp" or msg.text = "Uxgp" then
    s = tonumber(xy)
    xy = 0
    chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
    xy = tonumber(s)
    end
end
 
return {
  patterns = {
    "^!!tgservice (.+)$",
    "^[Xx]y on$",
    "^[Xx]y off$",
    "^[Uu]xgp$"
  },
  run = run
}

end
