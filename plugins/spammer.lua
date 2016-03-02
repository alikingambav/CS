do

function run(msg, matches)
       if not is_sudo(msg) then
              return "Only Sudoers Can Use it"       end
  local num = matches[1]
  local txt = matches[2]

for i=1, num, 1 do
sp = txt..'\n'..sp
i = i + 1

end

return sp
end

return {
    patterns = {
      "^[Ss]pam (%d+) (.*)$"
    },
    run = run,
}

end
