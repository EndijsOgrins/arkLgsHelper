autorunGKey = 1
toggleRun = true

function OnEvent(event,arg,family)
OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
if event == "G_PRESSED" and arg == autorunGKey then
toggleRun = not toggleRun
if toggleRun then
PressKey("lshift")
PressKey("w")
else
ReleaseKey("w")
ReleaseKey("lshift")
end
end
end