local function run(msg)
local x = msg.reply_ip
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
