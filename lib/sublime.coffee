cmd = require './command_exec'
code_dir = '~/Documents/Wingman/'
script = 'do shell script "subl ./"'

module.exports = 
	open: (repo) ->
		script = 'do shell script "cd '+code_dir+'; subl ./'+repo+'"'
		cmd.exec script