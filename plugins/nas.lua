local function run(msg)
local x = msg.reply_id
if msg.text == "x" then
   if type(msg.reply_id) ~= "nil" then
   return x
   end
end
end
return {
patterns = { "^x$" }, run = run }
