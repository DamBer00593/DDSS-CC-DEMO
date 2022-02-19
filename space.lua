--[[
Just a small program i wrote to show the available space currently on the device
developed by DaBe00593
--]]

local component = require("component")
fs = component.filesystem

print(fs.spaceUsed().."/"..fs.spaceTotal())
