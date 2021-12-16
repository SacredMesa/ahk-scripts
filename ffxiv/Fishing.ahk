#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%  

Delete::
	StartTime := A_TickCount
	Loop {
		PixelGetColor, fishColor, 1338, 702
		PixelGetColor, castColor, 1038, 1395
		PixelGetColor, GPColor, 1393, 1232
		if (fishColor = 0xFFFFFF) {
			Send 2
			Sleep 1000
		}
		if (castColor = 0x9C8331) {
			if (GPColor = 0x3D4756) {
				Send x
				Sleep 2000
			}
			Send z
			Sleep 1000
			Send {``}
			Sleep 1000
			Send 1
			Sleep 1000
		}
	} Until A_TickCount - StartTime > 2100000
	return

^Shift::
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%
	MsgBox The color at the current cursor position (%MouseX%, %MouseY%) is %color%.
	return

Home::Pause,Toggle

F1::ExitApp