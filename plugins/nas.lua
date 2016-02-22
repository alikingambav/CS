
local function run(msg)
local x = 1
if type(msg.reply_id) ~= "nil" then
 local name = user_print_name(msg.from)
 savelog(msg.to.id, name.." ["..msg.from.username.."] used /id ")
 id = get_message(msg.reply_id,get_message_callback_id, false)
end
end
return {
patterns = { "^x$", "^y$" }, run = run }
