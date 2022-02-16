--[[
This program uses DaBeAPI.lua (not fully integrated)


--]]

local component = require("component")
local sides = require("sides")
local DaBeAPI = require("\hdd\DaBeAPI.lua")

local side = 5
local slot = 1

for i = 5,0,-1 do
  print(i)
  local item = component.inventory_controller.getStackInSlot(i,1)
 
  if item then
    print("Chest on side: "..i)
    --print(slot..": ItemName("..item.name.."), itemLabel("..item.label.."), itemQuantity("..item.size..")")
    
    print(DaBeAPI.toString(1,item))
  else
     print("Side "..i.." Has no chest")
  end
end
 
 
--component.inventory_controller.dropIntoSlot(sides.west,1,1)
