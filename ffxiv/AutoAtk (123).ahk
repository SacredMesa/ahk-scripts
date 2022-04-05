#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

singleTgt = !singleTgt
aoeTgt = !aoeTgt

Delete::
	Loop {
			Send 1
			Sleep 2450
			Send 2
			Sleep 2450
			Send 3
			Sleep 2450
	}	
	return

Home::Pause,Toggle

F1::ExitApp
