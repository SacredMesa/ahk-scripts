#NoEnv
#Include ..\Chrome.ahk_v1.2\Chrome.ahk
SetWorkingDir %A_ScriptDir%

; Initiate profile
FileCreateDir, ChromeProfile
ChromeInst := new Chrome()
Sleep, 1000

SetTimer, wishingWellQuest, 29040000 ; Repeat every 8 hours and 2 minutes

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

		MouseClick, left, 1671, 1026
		Sleep 500
		MouseClick, left, 1265, 291
		Sleep 500
		MouseClick, left, 1283, 664
		Sleep 500
		MouseClick, left, 1276, 962
		Sleep 500
		MouseClick, left, 931, 836
		Sleep 500
		MouseClick, left, 1438, 1295
		Sleep 500
		MouseClick, left, 1271, 1234
		Sleep 7000
		MouseClick, WheelDown, 241, 570, 3
		Sleep 1000
		MouseClick, left, 245, 572
		Sleep 45000
		MouseClick, left, 1407, 1046
		Sleep 7000
		MouseClick, WheelDown, 241, 570, 3
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

