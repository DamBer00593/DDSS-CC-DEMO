--[[
This program uses DaBeAPI.lua (not fully integrated)


--]]

local component = require("component")
local sides = require("sides")
local DaBeAPI = require("DaBeAPI")
local InvComp = component.inventory_controller

for i = 5,0,-1 do
  slot = 1
  local item = DaBeAPI.invGetSlotInfo(InvComp,i,slot)

  if item then
    print("Chest on side: "..i)
    print(DaBeAPI.toString(slot,item))
  else
     print("Side "..i.." Has no chest")
  end
end
