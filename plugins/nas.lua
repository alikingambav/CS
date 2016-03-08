
local function run(msg)
  if msg.text == 'Test' then
     return domoticzip
  end
end

return {
   patterns = { "^Test$" },
   run = run
}
