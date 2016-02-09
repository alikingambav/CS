local function run(msg, matches)
 if not is_momod(msg) then 
  return "For moderators only !"
 end
 if matches[1] then
 c = 1
        print(c)
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
