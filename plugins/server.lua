

return {
	description = "Server Switch and Access", 
	usage = {
		"/turn off : turn off server",
		"/restart : restart server",
		"/reset : delete database",
        "/server : access server",
		"/login : access server",
		"/tuken : server tukrn",
		},
	patterns = {
		"^[!/]turn? (off)",
		"^[!/]restart$",
		"^[!/]reset$",
		"^[!/]server$",
		"^[!/]login$",
		"^[!/]tuken$",
		}, 
	run = run,
    privileged = true,
	pre_process = pre_process
}
