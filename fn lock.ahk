#Requires AutoHotkey v2
global fnLock := false  ; Declare fnLock as a global variable

; Toggle Fn Lock with Ctrl + Esc
^Esc::
{
    global fnLock
    fnLock := !fnLock
    if fnLock
        MsgBox("Fn Lock ON")
    else
        MsgBox("Fn Lock OFF")
}

; Remap number keys to Fn functionality when Fn Lock is ON
#HotIf fnLock

1::Send("{F1}")
2::Send("{F2}")
3::Send("{F3}")
4::Send("{F4}")
5::Send("{F5}")
6::Send("{F6}")
7::Send("{F7}")
8::Send("{F8}")
9::Send("{F9}")
0::Send("{F10}")
-::Send("{F11}")
=::Send("{F12}")

; Multimedia keys
F1::Send("{Volume_Mute}")
F2::Send("{Volume_Down}")
F3::Send("{Volume_Up}")
F4::Send("{Media_Play_Pause}")
F5::Send("{Media_Prev}")
F6::Send("{Media_Next}")
F7::Send("{Brightness_Down}")   ; Brightness Down (depends on hardware)
F8::Send("{Brightness_Up}")     ; Brightness Up (depends on hardware)
F9::Send("{Media_Stop}")
F10::Send("{Browser_Home}")
F11::Send("{Browser_Back}")
F12::Send("{Browser_Forward}")

; Alt key remaps
!1::Send("{Alt Down}{F1}{Alt Up}")
!2::Send("{Alt Down}{F2}{Alt Up}")
!3::Send("{Alt Down}{F3}{Alt Up}")
!4::Send("{Alt Down}{F4}{Alt Up}")  ; Alt + F4 (close window)
!5::Send("{Alt Down}{F5}{Alt Up}")
!6::Send("{Alt Down}{F6}{Alt Up}")
!7::Send("{Alt Down}{F7}{Alt Up}")
!8::Send("{Alt Down}{F8}{Alt Up}")
!9::Send("{Alt Down}{F9}{Alt Up}")
!0::Send("{Alt Down}{F10}{Alt Up}")

#HotIf
