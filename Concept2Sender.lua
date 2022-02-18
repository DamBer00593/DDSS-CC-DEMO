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

local dirt = {"minecraft:dirt", 0.0, 16} --currency = {itemName, itemDmg, itemQty}

while true do
  os.sleep(1)
  term.clear()
  while true do --beginning of internal button while loop
    os.sleep(1)
    term.clear()
    if rs.getBundledInput(sides.top,0) > 0 then
        bp = 1
    end
    if rs.getBundledInput(sides.top,14) > 0 then
      bp = 2
    end

    if bp == 0 then
      print("Nothing is currently selected")
    elseif bp == 1 then
      print("Cobblestone is selected")
    elseif bp == 2 then
      print("Wood is selected")
    end
    
    if bp > 0 then
      break
    end
  end --end of internal button while loop
  local item = InvComp.getStackInSlot(chestSide,slot)
  
  if item then
    if item.name == dirt[1] and itemDmg == dirt[2] then
      if item.size == dirt[3] then
        if bp == 1 then
          modem.transmit(9,"cobblestone")
          print("Sending Frequency!")
        elseif bp == 2 then
          modem.trasmit(9,"Wood")
          print("Sending Frequency!")
        end
      end
    end
  else
    print("No item in chest")
  end
end
