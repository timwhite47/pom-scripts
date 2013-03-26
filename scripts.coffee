#!/usr/bin/env coffee
util = require 'util'
argv = require('optimist').argv
prompt = require 'prompt'
system = require './lib/system'

prompt.start();
switch argv._[0]
	when 'start'
		console.log 'starting!!!', argv.t, argv.d
		if argv.t and argv.d
			system.pomodoro.start argv.t, argv.d
		else
			prompt.get ['title', 'duration'], (err, pom) ->
				system.pomodoro.start pom.title, pom.duration
				system.rdio.play()
				system.sublime.open('pledgie')

	
