#MaxMem 1024
if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

Loop, C:\Users\%A_UserName%\*.jpg,R
{
    Filenames .= A_LoopFileFullPath . "`n"
}
Sort, Filenames, Random
MsgBox, C:\Users\%A_UserName%\

Loop, Parse, Filenames, `n
{
	MsgBox, 4, , Found: %A_LoopField%
}