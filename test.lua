local component = require("component")
local sides = require("sides")
local side = 5
local slot = 1
--local item = component.inventory_controller.getStackInSlot(side,slot)
--local item2 = component.inventory_controller.getStackInSlot(3,1)
 
for i = 5,0,-1 do
  print(i)
  local item = component.inventory_controller.getStackInSlot(i,1)
 
  if item then
    print("itemName: ",item.name)
    --print("itemId: ",item.id)
    print("itemCount: ",item.size)
    print("itemLabel: ",item.label)
  else
    print("slot "..slot.." is empty")
  end
end
 
 
component.inventory_controller.dropIntoSlot(sides.west,1,1)
