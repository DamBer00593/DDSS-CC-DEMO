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
local invComp = component.inventory_controller --Shorthand pretty self explanetory
local modem = component.modem --Shorthand pretty self explanetory
local rs = component.redstone --Shorthand pretty self explanetory
local bp = 0 --Button pressed should be renamed later currently a test value
local chestSide = 5 -- the side the chest is on
local slot = 1 -- The slot used for verification could be hardcoded later 
local confrm = 0 -- 0 is false 1 is true
local test = ""
local dirt = {"minecraft:dirt", 0.0, 16} --currency = {itemName, itemDmg, itemQty}

while true do

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
    test = "16 Cobblestone"
  elseif bp == 2 then
    print("Wood is selected")
    test = "4 Wood"
  end
    

  local item = invComp.getStackInSlot(chestSide,slot)
  
  if item then
    if item.name == dirt[1] and item.damage == dirt[2] then
      if item.size == dirt[3] then
        print("Please press the confirmation button if everything is okay.")
        
        print("You've put in "..math.floor(item.size).. " of "..item.name..", You will be recieving "..test)
        
        if rs.getBundledInput(sides.top,11) > 0 then
          confrm = 1
        end
        if bp == 1 and confrm == 1 then
          modem.broadcast(9,"Cobblestone")
          print("Sending Frequency!")
          confrm = 0
        elseif bp == 2 and confrm == 1 then
          modem.broadcast(9,"Wood")
          print("Sending Frequency!")
          confrm = 0
        end
      end
    end
  else
    print("No item in chest")
  end
  os.sleep(1)
  term.clear()
end
