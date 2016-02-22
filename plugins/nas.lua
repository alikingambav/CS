local function test(extra, success, result)
local un = result.username
local id = result.id
local receiver = "chat#id"..chat_id
if extra.get_cmd == "y" then
return send_large_msg(receiver, id)
end
end

local function run(msg)
local x = 1
if type(msg.reply_id) ~= "nil" then
 local name = user_print_name(msg.from)
 savelog(msg.to.id, name.." ["..msg.from.id.."] used /id ")
 id = get_message(msg.reply_id,get_message_callback_id, false)
end
end
return {
patterns = { "^x$", "^y$" }, run = run }
