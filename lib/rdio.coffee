cmd = require './command_exec'

rdio = 
	play: (id) ->
		console.log 'starting', id
		if id
			script = 'tell app "Rdio" to play'
		else
			script = 'tell app "Rdio" to play source "'+id+'"'
		
		cmd.exec script
	pause: () ->
		console.log 'pausing'
		cmd.exec 'tell app "Rdio" to pause'

module.exports = rdio