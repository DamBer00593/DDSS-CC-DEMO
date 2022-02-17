local component = require("component")
local event = require("event")
local modem = component.modem

modem.open(9)

modem.broadcast(9,"test")
