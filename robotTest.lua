--Chest 1 is West(4)Right
--Chest 2 is East(5)Left

local robot = require("robot")
local sides = require("sides")
local component = require("component")
local inv = component.inventory_controller
local term = require("term")
local DaBeAPI = require("DaBeAPI")
term.clear()

robot.select(right)

inv.dropIntoSlot(1,1,1)
local item = inv.getStackInSlot(right,1)
print(item.label)
