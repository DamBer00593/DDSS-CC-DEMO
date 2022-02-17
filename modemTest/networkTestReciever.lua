local component = require("component")
local event = require("event")
local modem = component.modem

modem.open(9)

local _, _, from, port, _, message = event.pull("modem_message")
print("Got a message from "..from.." On Port: "..port..": "..mesage)
