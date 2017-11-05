;#NoTrayIcon
;#Persistent
DetectHiddenWindows, On
start:
Sleep, 100
Random, selection, 0, 13
if selection = 0
{
SoundPlay, 1.wav, 1
Goto, start
}

Else if selection = 1
{
SoundPlay, 2.wav, 1
Goto, start
}

Else if selection = 2
{
SoundPlay, 3.wav, 1
Goto, start
}

Else if selection = 3
{
SoundPlay, 4.wav, 1
Goto, start
}

Else if selection = 4
{
SoundPlay, 5.wav, 1
Goto, start
}

Else if selection = 5
{
SoundPlay, 6.wav, 1
Goto, start
}

Else if selection = 6
{
SoundPlay, 7.wav, 1
Goto, start
}

Else if selection = 7
{
SoundPlay, 8.wav, 1
Goto, start
}

Else if selection = 8
{
SoundPlay, 9.wav, 1
Goto, start
}

Else if selection = 9
{
SoundPlay, 10.wav, 1
Goto, start
}

Else if selection = 10
{
SoundPlay, 11.wav, 1
Goto, start
}

Else if selection = 11
{
SoundPlay, 12.wav, 1
Goto, start
}

Else if selection = 12
{
SoundPlay, 13.wav, 1
Goto, start
}

Else if selection = 13
{
SoundPlay, 14.wav, 1
Goto, start
}

Else if selection = 14
{
SoundPlay, 15.wav, 1
Goto, start
}

Else if selection = 15
{
SoundPlay, 16.wav, 1
Goto, start
}


Else
{
ExitApp
}

F12::ExitApp
F11::Reload