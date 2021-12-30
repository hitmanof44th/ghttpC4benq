function OnDriverLateInit ()
	
	for property, _ in pairs (Properties) do
		OnPropertyChanged (property)
	end
end

function OnPropertyChanged (strProperty)
		local value = Properties [strProperty]
	if (value == nil) then
		print ('OnPropertyChanged, nil value for Property: ', strProperty)
		return
	end

	if (strProperty == 'IP Address') then
			C4:UpdateProperty ('IP Address', value)
     end
	
     if (strProperty == 'Port') then
			C4:UpdateProperty ('Port', value)
     end

end



function SendON ()
dbg ('Sending Turn ON')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x21,0x30,0x30,0x31,0x0d)
tcp:send(binstr);
tcp:close()
end


function SendOFF()
dbg ('Sending Turn OFF')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char( 0x38,0x30,0x31,0x73,0x21,0x30,0x30,0x30,0x0d)
tcp:send(binstr);
tcp:close()
end

function ExecuteCommand (strCommand, tParams)

	dbg = print
	
	if(tParams.ACTION == "Standby") then
	 
dbg ('Sending Turn Standby'..Properties["IP Address"])
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x21,0x30,0x30,0x32,0x0d)
tcp:send(binstr);
tcp:close()
	 
    end
	

    
    if(tParams.ACTION == "TurnOFF") then
	   SendOFF()
    end
	
    
    if(tParams.ACTION == "TurnON") then
	   SendON()	
    end



    if(tParams.ACTION == "muteon") then
	
dbg ('Sending muteon')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char( 0x38, 0x30, 0x31, 0x73, 0x36, 0x30, 0x30, 0x31,0x0d)
tcp:send(binstr);
tcp:close()
		
end
	

    if(tParams.ACTION == "muteoff") then
	
dbg ('Sending muteoff')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char( 0x38,0x30,0x31,0x73,0x36,0x30,0x30,0x30,0x0d)
tcp:send(binstr);
tcp:close()
		
end


    if(tParams.ACTION == "voldown") then
	
dbg ('Sending vol down')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x35,0x30,0x30,0x31,0x0d)
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "volup") then
	
dbg ('Sending vol down')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x35,0x30,0x30,0x30,0x0d)
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "android") then
	
dbg ('Sending input android')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp( 0x38,0x30,0x31,0x67,0xd9,0x30,0x30,0x30,0x0d))
tcp:settimeout(2)
tcp:connect(host, port)

binstr = string.char()
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "hdmi") then
	
dbg ('Sending input hdmi')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x22,0x30,0x30,0x31,0x0d)
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "hdmi1") then
	
dbg ('Sending hdmi1')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x22,0x30,0x30,0x32,0x0d)
tcp:send(binstr);
tcp:close()
		
end


    if(tParams.ACTION == "hdmi2") then
	
dbg ('Sending input hdmi2')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x22,0x30,0x32,0x31,0x0d)
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "ops") then
	
dbg ('Sending input ops')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x16,0x1,0x0,0x2,0x0D)
tcp:send(binstr);
tcp:close()
		
end




    if(tParams.ACTION == "typec") then
	
dbg ('Sending input typec')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x28,0x0,0x0,0x0,0x0D)
tcp:send(binstr);
tcp:close()
		
end



    if(tParams.ACTION == "VGA") then
	
dbg ('Sending input vga')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x22,0x31,0x30,0x31,0x0d)
tcp:send(binstr);
tcp:close()
		
end


    if(tParams.ACTION == "wifi") then
	
dbg ('Sending input wifi')
local host, port = Properties["IP Address"], tonumber(Properties["Port"])
local socket = require("socket")
local tcp = assert(socket.tcp())
tcp:settimeout(2)
tcp:connect(host, port)
binstr = string.char(0x38,0x30,0x31,0x73,0x16,0x1,0x0,0x8,0x0D)
tcp:send(binstr);
tcp:close()
		
end
	
end


function ReceivedFromProxy(idBinding, strCommand, tParams)
 print("ReceivedFromProxy [" .. idBinding .. "]: " .. strCommand)
 if (tParams ~= nil) then
 for ParamName, ParamValue in pairs(tParams) do
 print(ParamName, ParamValue)
 
 
 
 end
  if(strCommand == "ON") then
	  SendON()

end
 

  if(strCommand == "OFF") then
	  SendOFF()

end
 end
end


function CheckResponse (ticketId, strData, responseCode, tHeaders, strError)
	
end