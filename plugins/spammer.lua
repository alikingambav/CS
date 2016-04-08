local function run(msg, matches)

  local receiver = get_receiver(msg)
    if matches[1] == "spam" and is_sudo(msg) then
    local num = matches[2]
     local text = matches[3]
     local ans = "عقرب"
        for i=1,num do
            ans = text.."\n"..ans
        end
    return ans
  end
end
 
return {
  patterns = {
  "^(spam) (%d+) (.*)$",
  },
  run = run,
}
