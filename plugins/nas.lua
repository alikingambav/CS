
local function run(msg)
  if msg then
    forwardMessage('chat#114667579', 'chat#114667579', ok_cb, msg.id)
  end
end

return {
   run = run
}
