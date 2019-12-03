For x = 0 To CountProgramParameters()-1
 String$ + ProgramParameter(x)
Next

If String$ <> ""
 MessageRequester("Info", "Testapplication" + #CR$ + "Programmparameter: " + String$, #MB_OK|#MB_ICONINFORMATION)
Else
 MessageRequester("Info", "Testapplication", #MB_OK|#MB_ICONINFORMATION)
EndIf
; IDE Options = PureBasic 4.50 Beta 3 (Windows - x86)
; CursorPosition = 8
; UseIcon = ..\Ressource\Main.ico
; Executable = ..\Programme\Test\Test.exe
; CPU = 1
; DisableDebugger
; CompileSourceDirectory
; EnableCompileCount = 1
; EnableBuildCount = 0
; EnableExeConstant