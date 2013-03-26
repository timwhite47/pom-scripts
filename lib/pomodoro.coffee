cmd = require './command_exec'

base = 'tell application "Pomodoro" to '

pomodoro = 
	start: (name, duration) ->
		script = base+'start "'+name+'" duration '+duration
		cmd.exec script
	complete: () ->
		script = base+'force completion'
		cmd.exec script
	pause: () ->
		script = base+'external interrupt'
		cmd.exec script
	resume: () ->
		script = base+'resume'
		cmd.exec script

module.exports = pomodoro

