#NoEnv
#Include ..\Chrome.ahk_v1.2\Chrome.ahk
SetWorkingDir %A_ScriptDir%

; Initiate profile
FileCreateDir, ChromeProfile
ChromeInst := new Chrome()
Sleep, 1000

SetTimer, wishingWellQuest, 28920000 ; Repeat every 8 hours and 2 minutes

wishingWellQuest:
	; Switch active window to chrome
	if WinExist("ahk_exe chrome.exe") {
		SoundPlay *64
		MsgBox,,, DFK Questing will begin in 5 seconds!, 5
		WinMaximize
		; Connect to the newly opened tab and navigate to website
		if !(dfk := ChromeInst.GetPage()) {
			MsgBox, Could not retrieve page :( Ask Asyraaf what's happening
			ChromeInst.Kill()
		} else {
			dfk.Call("Page.navigate", {"url": "https://game.defikingdoms.com/#/"})
			dfk.WaitForLoad()
		}

		Sleep 10000 ; Wait for game load
		WinActivate ; Make DFK the active window for mouse pos references

		MouseClick, left, 973, 276
		Sleep 500
		MouseClick, left, 1691, 766
		Sleep 500
		MouseClick, left, 1276, 966
		Sleep 500
		MouseClick, left, 937, 839
		Sleep 500
		MouseClick, left, 1435, 1292
		Sleep 500
		MouseClick, left, 1272, 1215
		Sleep 7000
		MouseClick, WheelDown, 245, 572, 3
		Sleep 1000
		MouseClick, left, 245, 572
		Sleep 45000
		MouseClick, left, 1413, 1034
		Sleep 7000
		MouseClick, WheelDown, 245, 572, 3
		Sleep 1000
		MouseClick, left, 245, 572
		Sleep 10000
		dfk.Call("Page.navigate", {"url": "chrome://newtab"})
		dfk.Disconnect()
		return
	} else {
		; Error if chrome has been closed
		MsgBox Chrome has been closed
	}

; Close the browser (note: this closes *all* pages/tabs)
F12::
	ExitApp

