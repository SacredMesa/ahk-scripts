#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

Delete::
	Loop
	{
		Send {Numpad0}
		Sleep 500
		Send {Numpad0}
		Sleep 2000
		Send {Ctrl down}
		Sleep 200
		Send {z}
		Sleep 200
		Send {Ctrl up}
		Sleep 35000
	}
return

Home::Pause,Toggle

F1::ExitApp