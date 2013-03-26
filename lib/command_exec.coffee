applescript = require "applescript"

module.exports = 
	exec: (script) ->
		applescript.execString script, (err, rtn) ->
			console.log err, rtn