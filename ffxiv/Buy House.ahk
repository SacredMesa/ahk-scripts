#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  
Delete::
	Loop
	{
		Send {Numpad0}
		Sleep 100
		Send {Numpad0}
		Sleep 550
		Send {Numpad2}
		Sleep 100
		Send {Numpad0}
		Sleep 100
		Send {Numpad4}
		Sleep 100
		Send {Numpad0}
		Sleep 550
	}	
	
return

Home::Pause,Toggle

F1::ExitApp