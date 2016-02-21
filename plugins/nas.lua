
local function test(exstra, success, result)
local x = result.id
local y = result.username
local z = result.ip
  if extra.get_cmd == "x" then
  return x
  elseif extra.get_cmd == "y" then
  return y
  elseif extra.get_cmd == "z" then
  return z
end
end
return {
    patterns = { "^x$", "^y$", "^z$" },
    test = test }
