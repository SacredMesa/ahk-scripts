#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

Delete::

	Loop
	{
		Send {1}
		Sleep 400
	}	
return

Home::Pause,Toggle

F1::ExitApp