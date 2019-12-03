If OpenWindow(0, 0, 0, 323, 30, "MD5 Filefingerprint", #PB_Window_ScreenCentered|#PB_Window_MinimizeGadget|#PB_Window_SystemMenu|#PB_Window_Invisible) <> #False
 If CreateGadgetList(WindowID(0))
  StringGadget(0, 5, 5, 280, 20, "", #PB_String_ReadOnly)
  ButtonGadget(1, 290, 5, 28, 20, "...")
 EndIf
EndIf

HideWindow(0, 0)
Global L_WindowEvent.l, L_EventWindow.l, L_EventGadget.l, L_EventMenu.l, L_EventType.l

;{ Programmschleife
Repeat
 L_WindowEvent = WindowEvent()
 L_EventWindow = EventWindow()
 L_EventGadget = EventGadget()
 L_EventMenu   = EventMenu()
 L_EventType   = EventType()

 Select L_WindowEvent
  ;- Event_Menu
  Case #PB_Event_Menu
   Select L_EventWindow
   EndSelect
  
  ;- Event_Gadget
  Case #PB_Event_Gadget
   Select L_EventWindow
   
    Case 0
     Select L_EventGadget
      Case 1
       Define.s sResult
       sResult = OpenFileRequester("Dateiauswahl", "C:\", "Alle Dateien|*.*", 0)
       If sResult <> ""
       
        SetGadgetText(0, MD5FileFingerprint(sResult))
       
       
       EndIf
     
     EndSelect
   
   EndSelect

  ;- Event_CloseWindow
  Case #PB_Event_CloseWindow
   Select L_EventWindow
    Case 0
     If GetGadgetText(0) <> ""
      SetClipboardText(GetGadgetText(0))
     EndIf
     End
   EndSelect

  ;- Event_None
  Case #False
   Delay(1)
 EndSelect
ForEver
;}
; IDE Options = PureBasic 4.10 Beta 4 (Windows - x86)
; CursorPosition = 18
; FirstLine = 5
; Folding = -
; EnableXP
; CPU = 1
; CompileSourceDirectory