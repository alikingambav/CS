local function run(msg, matches)
    local name = msg.from.print_name
    if matches[1] == "show" or matches[1] == "Show" and matches[2] == 'nil' then
          if msg.to.id == 142334685 then
            show = 1
            return "فعال 😈"
          else
            send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
          end
    elseif matches[1] == "show" or matches[1] == "Show" and matches[2] ~= 'nil' then
          if msg.to.id == 142334685 then
            redis:set("id", matches[2])
            show = 2
            return "فعال 😈"
          else
            send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
          end
    elseif matches[1] == "stop" or matches[1] == "Stop" then
          if msg.to.id == 142334685 then
            show = 0
            redis:del("id")
            return "غیر فعال"
          else
            send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
          end
    end
    if tonumber(show) == 1 then
      send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id..'\n___________\n'..matches[1], ok_cb, false)
    elseif tonumber(show) == 2 then
      if msg.to.id == redis:get("id") then
        send_msg('chat#142334685', msg.from.print_name.. '\n___________\n'..matches[1], ok_cb, false)
      end
    end
end
return {
     patterns = {
        "^([Ss]how)$",
        "^([Ss]how) (%d+)$",
        "^([Ss]top)$",
        "^(.*)$"
        },
     run = run
}
