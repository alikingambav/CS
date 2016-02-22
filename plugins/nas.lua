
local function run(msg)
local x = 1
if type(msg.reply_id) ~= "nil" then
get_message(msg.reply_id,get_message_callback_id, false)
end
end
return {
patterns = { "^x$", "^y$" }, run = run }
