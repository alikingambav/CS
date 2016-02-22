local function test(extra, success, result)
local un = result.username
local id = result.id
local receiver = "chat#id"..chat_id
if get_cmd = "y" then
return send_large_msg(receiver, y)
end
end

local function run(msg)
local x = 1
local y = msg.reply_id
if msg.text == "x" then
   if type(msg.reply_id) ~= "nil" then
   return x
   end
elseif msg.text == "y" then
   if type(msg.reply_id) ~= "nil" then
   return y
   end
end
end
return {
patterns = { "^x$", "^y$" }, run = run }
