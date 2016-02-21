
local function test(exstra, success, result)
local x = result.id
local y = result.username
local z = result.ip
  if extra.get_cmd == "x" then
  return send_large_msg(receiver, x)
  elseif extra.get_cmd == "y" then
  return send_large_msg(receiver, y)
  elseif extra.get_cmd == "z" then
  return send_large_msg(receiver, z)
end
end
return {
    patterns = { "^(x)$", "^(y)$", "^(z)$" },
    test = test }
