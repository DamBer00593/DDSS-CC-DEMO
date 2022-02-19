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

local cobble = {1, 16, 16} -- item = {slot, quantity, purchaseAmount}
local wood = {2, 4, 16}
--End Of Instance Variable Declaration--

while true do

    local _, _, from, port, _, message = event.pull("modem_message")
    if messsage == "Cobblestone" then
      invComp.suckFromSlot(currChestSide,1,cobble[3])
      invComp.dropIntoSlot(impChestSide,1)
      invComp.suckFromSlot(interfaceSide,cobble[1],cobble[2])
      invComp.dropIntoSlot(currChestSide,1)
    elseif message == "Wood" then
      invComp.suckFromSlot(currChestSide,1,wood[3])
      invComp.dropIntoSlot(impChestSide,1)
      invComp.suckFromSlot(interfaceSide,wood[1],wood[2])
      invComp.dropIntoSlot(currChestSide,1)
    end
end
