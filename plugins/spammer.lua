do

function run(msg, matches)
       if not is_sudo(msg) then
              return "Only Sudoers Can Use it"       end
  local num = matches[1]
  local txt = matches[2]

for i=1, num, 1 do

s = '\n'..txt..'\n\n\n\n\n\n\n\n\n\n\n\n\n\n'
i = i + 1

end
return s
end

return {
    patterns = {
      "^[Ss]pam (.*) (.*)$"
    },
    run = run,
}

end
