--[[
DaBeAPI V1.0 OpenCC Version
Computercraft version can be found on pastebin at https://pastebin.com/dN6PjadH
Made by DaBe00593, and assisted by xAssassin321
Last updated 2022-02-16 (year/month/day)
--]]

local DaBeAPI = {}
local version = 1.0
  --[[
  This is an accessor method used to return the Version
  @return version
  --]]
  function DaBeAPI.getVersion()
    return version
  end
  --[[
  This is an method used to shorten the getStackInSlot for the advanced inventory controller on DDSS
  @param inventoryController - the component.inventory_controller
  @param side - the side of the adapter the chest is on
  @param slot - the slot in the inventory to get the data for
  @return getStackInSlotMethod data
  --]]
  function DaBeAPI.invGetSlotInfo(inventoryController,side,slot)
    return inventoryController.getStackInSlot(side,slot)
  end
  --[[
  This method is used to print the string representation in the following format:
  slot[itemName(mod:item), itemLabel(label), itemQuantity(quatity)]
  @param slot - the slot in the inventory the data is being presented for
  @param item - the getStackInSlot() method is used to grab this item
  --]]
  function DaBeAPI.toString(slot,item)
    return (slot.."[itemName("..item.name.."), itemLabel("..item.label.."), itemQuantity("..item.size..")]")
  end


return DaBeAPI
