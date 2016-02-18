do
local function run(msg, matches)
local x = 125775990
 if msg.text == "xy on" or msg.text == "Xy on" then
    local xy = on
    return "XY ✅"
 end
 if msg.test == "xy off" or msg.text == "Xy off" then
    local xy = off
    return "XY ❌"
 end
    if msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(x) then
       if xy == "on" then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
       else
       return
       end
    end
end
 
return {
  patterns = {
    "^!!tgservice (.+)$",
    "^[Xx]y on$",
    "^[Xx]y off$"
  },
  run = run
}

end
