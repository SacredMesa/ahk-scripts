#NoEnv
#Include ..\Chrome.ahk_v1.2\Chrome.ahk
SetWorkingDir %A_ScriptDir%

; Initiate profile
FileCreateDir, ChromeProfile
ChromeInst := new Chrome()
Sleep, 1000

; Connect to the newly opened tab and navigate to website

	if !(holderRaffle := ChromeInst.GetPage()) {
		MsgBox, Could not retrieve page :( Ask Asyraaf what's happening
		ChromeInst.Kill()
	} else {
		holderRaffle.Call("Page.navigate", {"url": "https://discord.com/channels/728220836603101204/916426340268408903"})
		holderRaffle.WaitForLoad()
	}
	return

; Execute them JavaScript
F12::
	loop {
		holderRaffleLastUser := PageInstance.Evaluate("document.getElementsByClassName('username-1A8OIy')[document.getElementsByClassName('username-1A8OIy').length - 1].innerText").value

		if (holderRaffleLastUser = "XCOPY" or holderRaffleLastUser = "Adam" or holderRaffleLastUser = "sted1" or holderRaffleLastUser = "GiveawayBot") {
			SoundPlay, FFXIV_FATE01_Start.mp3
			MsgBox, %holderRaffleLastUser% HAS SENT A MESSAGE!! WGMI
			Break
		}
	}
	return

; Close the browser (note: this closes *all* pages/tabs)
F4::
	holderRaffle.Disconnect()
	ExitApp
	return
