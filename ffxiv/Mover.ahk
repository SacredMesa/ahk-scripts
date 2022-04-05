#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

keyArr := ["h", "i", "c", "."]

Delete::
	Loop
	{
		Random, keyIndex, 1, 5
		Random, sleepTime, 5700, 33460
		SendInput % keyArr[keyIndex]
		Sleep sleepTime
	}	
return

Home::Pause,Toggle

F1::ExitApp
