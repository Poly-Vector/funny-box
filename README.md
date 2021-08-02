# funny-box
a project to make a simple and easy to use modern server sided boombox on roblox

how to add funny box into your game:


//local side

create a Tool instance in your game.

insert a Part and parent it to the tool.

rename the Part "Handle" and configure to what you like (make sure the part is unanchored).

insert the equipped.lua file as a local script and parent it to the tool.

create a ui parented to the Tool with a play and stop TextButton parented to a frame (with the names: "Play" and "Stop") and add a TextBox for soundId, volume, timeposition and speed/pitch (with the names: "SoundId", "Volume", "TimePosition" and "Speed").

insert the PlayClicked.lua file as a LocalScript into the play button and the StopClicked.lua file as a LocalScript into the stop button.


//server side

insert the Mount.lua and RadioServer.lua files as Scripts into ServerScriptService.

create two remote events in ReplicatedStorage (with the names: "MountToBack" and "Radio").
