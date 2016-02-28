do

function run(msg, matches)
       if not is_sudo(msg) then
              return "Only Sudoers Can Use it"       end
  local num = matches[1]
  local txt = matches[2]

for i=1, num, 1 do
send_msg(msg.to.id, txt, ok_cb, false)
i = i + 1
end

end

return {
    patterns = {
      "^[Ss]pam (%d+) (.*)$"
    },
    run = run,
}

end
