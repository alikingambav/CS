do

function run(msg, matches)
       if not is_sudo(msg) then
              return "Only Sudoers Can Use it"       end
  local tex = matches[1]
  local sps = matches[2]

for i=1, tex, 1 do
return i
sp = '\n'..sps..'\n\n\n\n\n\n\n\n'
i = i + 1

end

return sp
return "..."
end

return {
    patterns = {
      "^[Ss]pam (.*) (.*)$"
    },
    run = run,
}

end
