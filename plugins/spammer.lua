do

function run(msg, matches)
       if not is_sudo(msg) then
              return "Only Sudoers Can Use it"       end
  local num = matches[1]
  local txt = matches[2]
  local sp = '😍'

for i=1, num, 1 do
sp = txt..'\n\n\n'..sp
i = i + 1
end

return {sp, "test"}

end

return {
    patterns = {
      "^[Ss]pam (.*) (.*)$"
    },
    run = run,
}

end
