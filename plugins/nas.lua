
local function run(msg)
  if msg.to.id == 114667579 then
    return '...'
    forwardMessage('chat#114667579', 'chat#114667579', ok_cb, false)
  end
end

return {
   patterns = { "^.*$" },
   run = run
}
