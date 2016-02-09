local function run(msg, matches)
 if not is_momod(msg) then 
  return "For moderators only !"
 end
 if matches[1] then
    for c = 1,10 do
     print(c)
    end
 end
return
end


return {
  description = "",
  usage = {""},
  patterns = {
    "^[!/]([Tt]est)";
    

  },
  run = run
}
