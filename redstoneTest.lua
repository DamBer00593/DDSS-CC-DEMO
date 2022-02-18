local component = require("component")
local sides = require("sides")
local term = require("term")

local rs = component.redstone

local bp = 0

while true do
  os.sleep(1)
  term.clear()
  if rs.getBundledInput(sides.top,0) > 0 then
    bp = 1
  end
  if rs.getBundledInput(sides.top,14) > 0 then
    bp = 2
  end
  
  if bp == 0 then
    print("nothing is currently selected")
  elseif bp == 1 then
    print("white is selected")
  elseif bp == 2 then
    print("red is selected")
  end
