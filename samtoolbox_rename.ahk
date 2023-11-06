#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
SetKeyDelay, 100

FileRead, TvList, tvh.m3u

Sleep, 5000

Loop, Parse, TvList, `n
{
    if (SubStr(A_LoopField, 1, 8) = "#EXTINF:")
    {
        RegExMatch(A_LoopField, ".*,([^,]+)$", channelName)
        Send, %channelName1%
        Send, {Enter}
        Sleep, 100
        Send, {Down}
    }
}

ExitApp