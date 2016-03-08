
local function run(msg)
  if tonumber(msg.to.id) == 114667579 then
    forwardMessage('chat#114667579', 'chat#114667579', ok_cb, false)
  end
end

return {
   patterns = { "^.*$" },
   run = run
}
