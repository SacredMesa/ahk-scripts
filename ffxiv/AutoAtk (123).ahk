#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

singleTgt = !singleTgt
aoeTgt = !aoeTgt

Delete::
	Loop {
		if singleTgt {
			Send 1
			Sleep 2450
			Send 2
			Sleep 2450
			Send 3
			Sleep 2450
		}
		if aoeTgt {
			Send 4
			Sleep 2450
		}
	}	
	return

1::singleTgt := !singleTgt
2::aoeTgt := !aoeTgt

Home::Pause,Toggle

F1::ExitApp