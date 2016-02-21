
local function pv(extra, success, result)
if extra.get_cmd == "pv" or extra.get_cmd == "Pv" then
  if result.id = extra.from_id then
   return "برم پی وی خودم؟ 😕"
  else
    send_large_msg(result.id, matches[2])
  end
end



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

