--Library Import Statements--
local component = require("component")
local sides = require("sides")
local DaBeAPI = require("DaBeAPI")
local event = require("event")
--End Of Library Import Statements--
--[[
Developed by DaBe00593 on 2022-02-17 (year-month-day)
A custom library DaBeAPI is required for this program to run
Possible todo: Add a disclaimer to the screen that we arent responsible for any items 
--]]
--Instance Variable Declaration--
local InvComp = component.inventory_controller
local modem = component.modem
local chestSide = 5
local slot = 1
--End Of Instance Variable Declaration--

while true do
  local item = DaBeAPI.invGetSlotInfo(invComp,chestSide,slot)
  if item then --In this statement we verify if the item is nil or not if it is we print error to the terminal
    
    if item.name == minecraft:dirt and item.dmg == 0 then --In this statement we determine if the name and the dmg value of the item match whats expected
      
      if item.size == 16 then --We verify the quantity is correct
        modem.broadcast(9,"test")
      end
      
    end
    
  else
    print("Error")
  end
