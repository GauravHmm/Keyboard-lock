#Requires AutoHotkey v2.0
global arrowlock := false

+W::
{
    global arrowlock
    arrowlock := !arrowlock  ; Toggle arrowlock here
    if arrowlock
        MsgBox "Arrow lock ON"
    else
        MsgBox "Arrow lock OFF"
}

#HotIf arrowlock
W::Send "{Up}"
S::Send "{Down}"
A::Send "{Left}"
D::Send "{Right}"
