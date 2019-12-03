Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro
Procedure.s ExePath()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetPathPart(Path$)
EndProcedure

#S_FileSysTrayLib = "SysTray.icl"

Global NewList hSysTrayIcn.l()

;Preferences, extrahiert alle verfügbaren Systray icons aus der Icon Libary
Procedure InitSysTrayLib(Path$)
 Protected IcnAmount.l, x.l, hIcn.l
 
 If FileSize(Path$) > 0
  IcnAmount = ExtractIconEx_(@path$, -1, #Null, #Null, #Null)
  If IcnAmount > 0
   For x = 0 To IcnAmount - 1
    If ExtractIconEx_(@path$, x, #Null, @hIcn, 1) <> 0
     AddElement(hSysTrayIcn())
     hSysTrayIcn() = hIcn
    EndIf
   Next
   ProcedureReturn CountList(hSysTrayIcn())
  Else
   MsgBox_Error("Die Systray Icon Libary ist ungültig." + #CRLF$ +  "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
   ProcedureReturn 0
  EndIf
 Else
  MsgBox_Error("Die Systray Icon Libary konnte nicht gefunden werden." + #CRLF$ + "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
  ProcedureReturn 0
 EndIf
EndProcedure

;If InitSysTrayLib(GetHomeDirectory() + "Desktop\" + #S_FileSysTrayLib) > 0
; ForEach hSysTrayIcn()
;  Debug hSysTrayIcn()
; Next
;EndIf
; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 18
; Folding = 9
; EnableXP
; CPU = 1