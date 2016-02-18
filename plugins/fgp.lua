local function run(msg)

end

return {
        description = "Fuck groups",
        usage = "fuck groups",
        patterns = {
             "^[Ff]gp$",
             "^[Ff]uckgp$"
             },
        run = run,
        pre_process = pre_process
        }
