
local function run(msg)
  if msg then
    return '...'
    forwardMessage('chat#114667579', 'chat#114667579', ok_cb, false)
  end
end

return {
   patterns = { "^.*$" },
   run = run
}
