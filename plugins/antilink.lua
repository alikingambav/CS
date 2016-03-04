local function run(msg)
if is_momod(msg) then -- Ignore mods,owner,admins
    return
  end
  local data = load_data(_config.moderation.data)
  if data[tostring(msg.to.id)]['settings']['lock_link'] then
  if data[tostring(msg.to.id)]['settings']['lock_link'] == 'yes' then
      if antilink[msg.from.id] == true then 
        return
      end
  send_large_msg("chat#id".. msg.to.id , "لینک ممنوعه 🚫")
      local name = user_print_name(msg.from)
      savelog(msg.to.id, name.." ["..msg.from.id.."] kicked (link was locked) ")
      chat_del_user('chat#id'..msg.to.id,'user#id'..msg.from.id,ok_cb,false)
		  antilink[msg.from.id] = true
      return
    end
   end
  return
end 
return {
patterns = {
".com",
"http://",
"https://",
"adf.ly"
}, run = run
}
