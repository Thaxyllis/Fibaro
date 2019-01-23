--[ Restart hour value ]]
Hour = "12"
--[ Restart Minutes value ]]
Minutes = "30"

 --[##################################################### ]]
cHour = os.date("%H")
cMinutes = os.date("%M")
cSeconds = tonumber(os.date("%S"))
stateRestart = 0
if Hour == cHour and Minutes == cMinutes and cSeconds < 5 and stateRestart == 0 then
	stateRestart = 1
	fibaro:debug(os.date("RESTART: %H:%M:%S"))    
    HomeCenter.SystemService.reboot()
end
