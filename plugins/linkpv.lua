local function run(msg, matches)
    
    if matches[1] == 'linkpv' or matches[1] == 'Linkpv' and is_momod(msg) then
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
      local name_log = user_print_name(msg.from)
      if not group_link then 
        return "Create a link first !"
      else
       savelog(msg.to.id, name_log.." ["..msg.from.id.."] requested group link ["..group_link.."]")
     send_large_msg('user#id'..msg.from.id, "Group link:\n"..group_link)
  end
     else
    return "For moderators only!"
    
end
end
return {
  patterns = {
  "^([Ll]inkpv)$",
  },
  run = run
}
