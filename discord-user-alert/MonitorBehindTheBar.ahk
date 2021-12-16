#NoEnv
#Include ..\Chrome.ahk_v1.2\Chrome.ahk
SetWorkingDir %A_ScriptDir%

; Initiate profile
FileCreateDir, ChromeProfile
ChromeInst := new Chrome()
Sleep, 1000

; Connect to the newly opened tab and navigate to website

	if !(behindBar := ChromeInst.GetPage()) {
		MsgBox, Could not retrieve page :( Ask Asyraaf what's happening
		ChromeInst.Kill()
	} else {
		behindBar.Call("Page.navigate", {"url": "https://discord.com/channels/728220836603101204/903036800258416721"})
		behindBar.WaitForLoad()
	}
	return

; Execute them JavaScript
F12::
	loop {
		behindBarLastUser := PageInstance.Evaluate("document.getElementsByClassName('username-1A8OIy')[document.getElementsByClassName('username-1A8OIy').length - 1].innerText").value

		if (behindBarLastUser = "XCOPY" or behindBarLastUser = "Adam" or behindBarLastUser = "sted1" or behindBarLastUser = "GiveawayBot") {
			SoundPlay, FFXIV_FATE01_Start.mp3
			MsgBox, %behindBarLastUser% HAS SENT A MESSAGE!! WGMI
			Break
		}
	}
	return

; Close the browser (note: this closes *all* pages/tabs)
F4::
	behindBar.Disconnect()
	ExitApp
	return
