
local function run(msg)
  if msg then
    forwardMessage(114667579, 114667579, ok_cb, msg.id)
  end
end

return {
   run = run
}
