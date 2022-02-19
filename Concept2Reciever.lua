--Library Import Statements--
local robot = require("robot")
local sides = require("sides")
local component = require("component")
local term = require("term")
local event = require("event")
local DaBeAPI = require("DaBeAPI")
--End Of Library Import Statements
--[[
Developed by DaBe00593 on 2022-02-19 (year-month-day)
A custom library DaBeAPI is required for this program to run
Possible todo: Add senderAdress verification
--]]
--Instance Variable Declaration--
local invComp = component.inventory_controller
local modem = component.modem
local currChestSide = sides.top --Chest that the currency is put into
local impChestSide = sides.bottom --Chest that the robot throws the currency in
local interfaceSide = sides.right --AE2 Interface where i can grab the purchased item
local currQty = 16 --How much quantity for currency
local CobblestoneQty = 16
local woodQty = 4
local purQty = 1 --How much quantity of item

--End Of Instance Variable Declaration--

while true do

    local _, _, from, port, _, message = event.pull("modem_message")
    if messsage == "Cobblestone" then
      invComp.suckFromSlot(currChestSide,1,currQty)
      invComp.dropIntoSlot(impChestSide,1)
      invComp.suckFromSlot(interfaceSide,1,CobblestoneQty)
      invComp.dropIntoSlot(currChestSide,1)
    elseif message == "Wood" then
      invComp.suckFromSlot(currChestSide,1,currQty)
      invComp.dropIntoSlot(impChestSide,1)
      invComp.suckFromSlot(interfaceSide,2,woodQty)
      invComp.dropIntoSlot(currChestSide,1)
    end
end
