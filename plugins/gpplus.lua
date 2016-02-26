local function run(msg)
if msg.to.id == 114667579 then
send_msg('chat#112719486', msg.text, ok_cb, false)
end
if msg.text == "plus" or msg.text == "Plus" and msg.to.id == 112719486 then
   send_msg('chat#112719486', "اینجا", ok_cb, false)
end
if msg.to.id == 141321200 then
send_msg('chat#79040567', msg.text, ok_cb, false)
end
if msg.text == "plus" or msg.text == "Plus" and msg.to.id == 79040567 then
   send_msg('chat#141321200', "اینجا", ok_cb, false)
end
end
return {
    patterns = {
    "^(.*)$"
    },
    run = run
}
