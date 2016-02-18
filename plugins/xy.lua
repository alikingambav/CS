do
local function run(msg, matches)
local x = 125775990
 if msg.text == "xy on" or msg.text == "Xy on" then
    local xy = 1
    return "on"
 elseif msg.test == "xy off" or msg.text == "Xy off" then
    local xy = 0
    return "off"
 end
    if msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(x) then
       if xy == 1 then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..x, ok_cb, false)
       else
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
