; Visio Hotkey Fix for AutoHotKey by Twyla Keating (v1.2) (2022-04-11)
; This AutoHotKey script fixes the Union Shapes hotkey and adds a hotkey for Subtract Shapes for Microsoft Visio.
; It also rebinds the common tools so that the hotkeys are all acccessible without moving your hand.

#noEnv	; Recommended for performance and compatiblity with future AutoHotKey releases.
#SingleInstance Force	; Only allows a single instance of the script to run at a time.
; SendMode Input	; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_Scriptdir%		; Ensures a consistent starting directory.

; Fixing the Union Shapes command (Ctrl+U)
^u::
BlockInput, On 
SetKeyDelay, 300
Send, {Alt down}{Alt up}
Send, {Alt down}{Alt up}
Send, {e}
SetKeyDelay, 100
Send, {Down}
Send, {Down}
Send, {Enter}
BlockInput, Off
return

; Adding the Subtract Shapes command (Control+Y)
^y::
BlockInput, On
SetKeyDelay, 300
Send, {Alt down}{Alt up}
Send, {Alt down}{Alt up}
Send, {e}
SetKeyDelay, 100
Send, {Down}
Send, {Down}
Send, {Down}
Send, {Enter}
BlockInput, Off
return

; Rebinding Select Cursor from Ctrl+1 to Ctrl+0
^0::
Send, ^{1}
return

; Rebinding Text Tool from Ctrl+2 to Ctrl+-
^-::
Send, {2}
return

; Rebinding Pencil Tool from Ctrl+4 to Ctrl+=
^=::
Send, ^{4}
return



; Change Notes:

; (v.1.2) Added BlockInput commands to Union/Subtract Shapes hotkeys to prevent errors from user input while script runs.
;		  Removed IfWinActive command. Added Change Notes section. Renamed file to Visio Hotkey Fix

; (v.1.1) Changed Subtract Shapes keybind from Ctrl+I to Ctrl+Y so as not to interfere with Set Italics default hotkey.