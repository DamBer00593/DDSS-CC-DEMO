local sides = require("sides")
local component = require("component")
local term = require("term")
local event = require("event")
local DaBeAPI = require("DaBeAPI")
--[[
Developed by DaBe00593 on 2020-02-18 (year-month-day)
A custom library DaBeAPI is required for this program to run
Other information that is useful to know with this program:
the interface contains the purchaseable items
slot 1: 16 cobblestone
slot 2: 4 wood
--]]
local invComp = component.inventory_controller
local modem = component.modem
local rs = component.redstone
local bp = 0 --Button pressed should be renamed later currently a test value
local chestSide = 5
local slot = 1
local itemName = "minecraft:dirt"
local itemDmg = 0.0
local itemQty = 16

local dirt = {"minecraft:dirt", 0.0, 16} --currency = {itemName, itemDmg, itemQty}

while true do
  if itemName == dirt[1] and itemDmg == dirt[2] and itemQty == dirt[3] then
    print("woo the table works")
    break
  end
end
