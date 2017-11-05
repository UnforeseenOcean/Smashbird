FADE       := 16
SHOW       := 131072
HIDE       := 65536

FADE_SHOW  := FADE+SHOW
FADE_HIDE  := FADE+HIDE

;Converting the above to Hexdecimal value

SetFormat, Integer, Hex
FADE_SHOW+=0 ; Converts to 0xa0000
FADE_HIDE+=0 ; Converts to 0x90000
SetFormat, Integer, d

Duration = 500 ; Duration of Animation in milliseconds
Gui, -border
Gui, Margin, 0,0
Gui +LastFound
Gui,Add,Button,Default,&Exit
GUI_ID:=WinExist() ; Handle to the GUI
Gui,Show,w400 h300 Hide, Animated Window ( Fade-In / Fade-Out )
AnimateWindow(GUI_ID, Duration, FADE_SHOW)
Return

ButtonExit:
  AnimateWindow(GUI_ID, Duration, FADE_HIDE)
  ExitApp
Return

GuiEscape:
GuiClose:
  AnimateWindow(GUI_ID, Duration, FADE_HIDE)
  ExitApp
Return

AnimateWindow(hWnd,Duration,Flag) {
Return DllCall("AnimateWindow","UInt",hWnd,"Int",Duration,"UInt",Flag)
}