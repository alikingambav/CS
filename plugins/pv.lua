local function run(msg, matches)
  if not is_sudo(msg) then -- For admins only !
    return 'just for sudoers'
  end
	if matches[1] == 'pv' or matches[1] == 'Pv' and is_admin(msg) then
		local response = matches[3]
		send_large_msg("user#id"..matches[2], response)
						local receiver = 'user#id'..user_id
				send_large_msg(receiver, response)
	end
	end
return {
  patterns = {
    "^([Pp]v) (%d+) (.*)$"
  },
  run = run
}
--Sends Pm To Users Pv With Fuck Emoji😂😂
--https://github.com/ThisIsArman
    --Telegram.me/ThisIsArman
