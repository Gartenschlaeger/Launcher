Global Icn_Apply.l  = CatchImage(0, ?Icn_Apply)
Global Icn_Cancel.l = CatchImage(1, ?Icn_Cancel)

DataSection
 Icn_Apply:  IncludeBinary "F:\Eigene Dateien\Dokumente\PureBasic\Projekte\USBLauncher\Ressource\Accept.ico"
 Icn_Cancel: IncludeBinary "F:\Eigene Dateien\Dokumente\PureBasic\Projekte\USBLauncher\Ressource\Cancel.ico"
EndDataSection

Procedure.s InputRequesterEx(MainWindow, Title$, Text$, Passwort = 0)
 Protected hWnd.l, WinEvnt.l, EvntMnu.l, EvntGdg.l
 Protected hBtn_Apply.l, hBtn_Cancel.l, hStrPW.l, hTxtInfo.l
 Protected Result.s

 If IsWindow(MainWindow) <> 0
  DisableWindow(MainWindow, 1)
  
  hWnd = OpenWindow(#PB_Any, 0, 0, 250, 85, Title$, #PB_Window_SystemMenu|#PB_Window_WindowCentered, WindowID(MainWindow))
  If hWnd <> 0
   AddKeyboardShortcut(hWnd, #PB_Shortcut_Return, 0)
   AddKeyboardShortcut(hWnd, #PB_Shortcut_Escape, 1)
   If CreateGadgetList(WindowID(hWnd)) <> 0
    hTxtInfo    = TextGadget(#PB_Any, 5, 5, 240, 15, "Passwort:")
    If Passwort = 1
     hStrPW      = StringGadget(#PB_Any, 5, 25, 240, 20, "", #PB_String_Password)
    Else
     hStrPW      = StringGadget(#PB_Any, 5, 25, 240, 20, "")
    EndIf
    hBtn_Cancel = ButtonImageGadget(#PB_Any, 110, 55, 65, 26, Icn_Cancel)
    hBtn_Apply  = ButtonImageGadget(#PB_Any, 180, 55, 65, 26, Icn_Apply)
   EndIf
  
   Repeat
    WinEvent = WaitWindowEvent()
    EvntMnu  = EventMenu()
    EvntGdg  = EventGadget()
    If (WinEvent = #PB_Event_Menu And EvntMnu = 0) Or (WinEvent = #PB_Event_Gadget And EvntGdg = hBtn_Apply)
     Result = GetGadgetText(hStrPW)
     Break
    EndIf
    If (WinEvent = #PB_Event_Menu And EvntMnu = 1) Or (WinEvent = #PB_Event_Gadget And EvntGdg = hBtn_Cancel) Or (WinEvent = #PB_Event_CloseWindow)
     Break
    EndIf
   ForEver
   
   CloseWindow(hWnd)
   DisableWindow(MainWindow, 0)
   
   ProcedureReturn Result
  EndIf
 EndIf
EndProcedure







If OpenWindow(0, 0, 0, 200, 200, "Testfenster", #PB_Window_SystemMenu|#PB_Window_ScreenCentered) <> 0
 If CreateGadgetList(WindowID(0)) <> 0
  ButtonGadget(0, 5, 5, 190, 24, "Passwortabfrage")
 EndIf
EndIf

Repeat
 Select WindowEvent()
  Case #PB_Event_Gadget: Debug InputRequesterEx(0, "Launcher", "Passwort:", 1)
  Case #PB_Event_CloseWindow: End
  Case #False: Delay(1)
 EndSelect
ForEver







; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 12
; Folding = -
; EnableXP
; CPU = 1