var applescript = require("applescript");

// Very basic AppleScript command. Returns the song name of each
// currently selected track in iTunes as an 'Array' of 'String's.
var script = 'do shell script "subl ./"';

applescript.execString(script, function(err, rtn) {
	console.log(rtn);
  if (err) {
    // Something went wrong!
  }
  if (Array.isArray(rtn)) {
    rtn.forEach(function(songName) {
      console.log(songName);
    });
  }
});