local function run(msg, matches)
 c = 1
 if not is_momod(msg) then 
  return "For moderators only !"
 end
 if matches[1] then
   while c <= 20 do
        return "..."
        c = c + 1
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
