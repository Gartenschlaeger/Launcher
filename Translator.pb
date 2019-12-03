EnableExplicit

Structure GadgetAutoSize
 Window.l
 Gadget.l
 GadgetL.l
 GadgetT.l
 GadgetR.l
 GadgetB.l
 LookL.b
 LookT.b
 LookR.b
 LookB.b
EndStructure
Global NewList GAS.GadgetAutoSize()

Procedure.l GAS_RegisterGadget(Window, Gadget, LookL, LookT, LookR, LookB)
 If IsWindow(Window) <> 0 And IsGadget(Gadget) <> 0
  ForEach GAS()
   If GAS()\Gadget = Gadget: ProcedureReturn 0: EndIf
  Next
  
  AddElement(GAS())
  GAS()\Window = Window
  GAS()\Gadget = Gadget
  GAS()\LookL = LookL
  GAS()\LookT = LookT
  GAS()\LookR = LookR
  GAS()\LookB = LookB
  
  If LookL = <1: GAS()\GadgetL = WindowWidth(Window) - GadgetX(Gadget): EndIf
  If LookT = <1: GAS()\GadgetT = WindowHeight(Window) - GadgetY(Gadget): EndIf
  If LookR = >0: GAS()\GadgetR = WindowWidth(Window) - (GadgetX(Gadget) + GadgetWidth(Gadget)): EndIf
  If LookB = >0: GAS()\GadgetB = WindowHeight(Window) - (GadgetY(Gadget) + GadgetHeight(Gadget)): EndIf
  
  ProcedureReturn 1
 Else
  ProcedureReturn 0
 EndIf
EndProcedure

Procedure.l GAS_UnregisterGadget(Window, Gadget)
 ForEach GAS()
  If GAS()\Window = Window And GAS()\Gadget = Gadget
   DeleteElement(GAS())
   ProcedureReturn 1
  EndIf
 Next
 ProcedureReturn 0
EndProcedure

Procedure.l GAS_ResizeGadgets(WindowEvent, Window)
 If WindowEvent = #PB_Event_SizeWindow And CountList(GAS()) > 0
  Protected Gadget.l, Size.l, PosX.l, PosY.l, Width.l, Height.l
  
  ForEach GAS()
   If GAS()\Window = Window
    Gadget = GAS()\Gadget
    PosX = GadgetX(Gadget)
    PosY = GadgetY(Gadget)
    Width = #PB_Ignore
    Height = #PB_Ignore
    
    If GAS()\LookL = 0: PosX = (WindowWidth(Window) - GAS()\GadgetL): EndIf
    If GAS()\LookT = 0: PosY = (WindowHeight(Window) - GAS()\GadgetT): EndIf
    If GAS()\LookR = 1: Width = (WindowWidth(Window) - PosX) - GAS()\GadgetR: EndIf
    If GAS()\LookB = 1: Height = (WindowHeight(Window) - PosY) - GAS()\GadgetB: EndIf
       
    ResizeGadget(Gadget, PosX, PosY, Width, Height)
   EndIf
  Next
  
  ProcedureReturn 1
 Else
  ProcedureReturn 0
 EndIf
EndProcedure

Enumeration
 #Win_Translator
 #Win_Save
EndEnumeration

Enumeration
 #MenuBar_Translator
EndEnumeration

Enumeration
 #Mnu_FileOpen
 #Mnu_FileSave
 #Mnu_FileClose
 #Mnu_End
 #Mnu_Reset
 #Mnu_Apply
 #Mnu_Help
 #Mnu_Info
EndEnumeration

Enumeration
 #G_CB_Translator_Language ;Main
 #G_LI_Translator_Language
 #G_SR_Translator_OriginalText
 #G_SR_Translator_TranslatedText
 #G_SP_Translator_Text
 #G_SP_Translator_All
 #G_TX_Save_Path ;Speichern
 #G_SR_Save_Path
 #G_BN_Save_Path
 #G_TX_Save_Version
 #G_SR_Save_Version
 #G_TX_Save_Author
 #G_SR_Save_Author
 #G_TX_Save_EMail
 #G_SR_Save_EMail
 #G_TX_Save_Homepage
 #G_SR_Save_Homepage
 #G_FR_Save_Gap
 #G_BN_Save_Cancel
 #G_BN_Save_Save
EndEnumeration

Global L_WindowEvent.l, L_EventWindow.l, L_EventGadget.l, L_EventMenu.l, L_EventType.l

#PrgName = "Launcher - LanguageTranslator"
#PrgVers = 100

Structure Lang
 Name.s
 OString.s
 TString.s
EndStructure
Global NewList Language.Lang()

Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Procedure.s ExePath()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetPathPart(Path$)
EndProcedure

Procedure.l Window_GetWidth(Window)
 Protected W.RECT
 If IsWindow(Window) <> 0
  GetWindowRect_(WindowID(Window), @W)
  ProcedureReturn W\right - W\left
 EndIf
EndProcedure

Procedure.l Window_GetHeight(Window)
 Protected W.RECT
 If IsWindow(Window) <> 0
  GetWindowRect_(WindowID(Window), @W)
  ProcedureReturn W\bottom - W\top
 EndIf
EndProcedure

Procedure.l Window_CenterOnWindow(Children, Main)
 Protected W1.RECT, W2.RECT
 If IsWindow(Children) <> 0 And IsWindow(Main) <> 0
  GetWindowRect_(WindowID(Children), @W1)
  GetWindowRect_(WindowID(Main), @W2)
  ProcedureReturn SetWindowPos_(WindowID(Children), 0, W2\left + ((W2\right - W2\left) - (W1\right - W1\left))/2, W2\top + ((W2\bottom - W2\top) - (W1\bottom - W1\top))/2, 0, 0, #SWP_NOZORDER|#SWP_NOSIZE|#SWP_NOACTIVATE)
 EndIf
EndProcedure

Procedure.l EditControl_SetLimitText(Gadget, Max)
 ProcedureReturn SendMessage_(GadgetID(Gadget), #EM_LIMITTEXT, Max, #Null)
EndProcedure

If OpenWindow(#Win_Translator, 0, 0, 800, 600, #PrgName, #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_MinimizeGadget|#PB_Window_MaximizeGadget|#PB_Window_SizeGadget|#PB_Window_ScreenCentered) <> #False
 If CreateMenu(#MenuBar_Translator, WindowID(#Win_Translator)) <> #False
  MenuTitle("Sprache")
   MenuItem(#Mnu_FileOpen, "Öffnen" + Chr(9) + "Strg + O")
   MenuItem(#Mnu_FileSave, "Speichern" + Chr(9) + "Strg + S")
   MenuItem(#Mnu_FileClose, "Schliessen" + Chr(9) + "Strg + W")
   MenuBar()
   MenuItem(#Mnu_End, "Beenden")
  MenuTitle("Bearbeiten")
   MenuItem(#Mnu_Reset, "Zurücksetzen" + Chr(9) + "Strg + R")
   MenuItem(#Mnu_Apply, "Übernehmen" + Chr(9) + "Strg + Enter")
  MenuTitle("Hilfe")
   MenuItem(#Mnu_Help, "Hilfe")
   MenuBar()
   MenuItem(#Mnu_Info, "Informationen")
 Else
  MsgBox_Error("Fehler beim erstellen von Menu 'Translator'"): End
 EndIf
 If CreateGadgetList(WindowID(#Win_Translator)) <> #False
  ListIconGadget(#G_LI_Translator_Language, 2, 2, 796, 280, "", 0, #PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_FullRowSelect|#PB_ListIcon_GridLines)
   GAS_RegisterGadget(#Win_Translator, #G_LI_Translator_Language, 1, 1, 1, 1)
   AddGadgetColumn(#G_LI_Translator_Language, 0, "Schlüssel", 100)
   AddGadgetColumn(#G_LI_Translator_Language, 1, "Text", 100)
  StringGadget(#G_SR_Translator_OriginalText, 0, 0, 0, 0, "", #ES_READONLY|#ES_MULTILINE|#ES_AUTOVSCROLL|#WS_VSCROLL|#ES_AUTOHSCROLL|#WS_HSCROLL)
   SetGadgetColor(#G_SR_Translator_OriginalText, #PB_Gadget_BackColor, GetSysColor_(#COLOR_WINDOW))
  StringGadget(#G_SR_Translator_TranslatedText, 0, 0, 0, 0, "", #ES_MULTILINE|#ES_AUTOVSCROLL|#WS_VSCROLL|#ES_AUTOHSCROLL|#WS_HSCROLL)
  SplitterGadget(#G_SP_Translator_Text, 2, 286, 796, 292, #G_SR_Translator_OriginalText, #G_SR_Translator_TranslatedText)
   SetGadgetState(#G_SP_Translator_Text, 120)
   SetGadgetAttribute(#G_SP_Translator_Text, #PB_Splitter_FirstMinimumSize, 80)
   SetGadgetAttribute(#G_SP_Translator_Text, #PB_Splitter_SecondMinimumSize, 80)
   GAS_RegisterGadget(#Win_Translator, #G_SP_Translator_Text, 1, 0, 1, 1)
 Else
  MsgBox_Error("Fehler beim erstellen von GadgetList 'Translator'"): End
 EndIf
 Global hWnd_Translator.l = WindowID(#Win_Translator)
 Global WinMinW_Translator.l = Window_GetWidth(#Win_Translator)
 Global WinMinH_Translator.l = Window_GetHeight(#Win_Translator)
Else
 MsgBox_Error("Fehler beim erstellen von Fenster 'Translator'"): End
EndIf

If OpenWindow(#Win_Save, 0, 0, 350, 290, "Sprache Speichern", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Translator)) <> #False
 If CreateGadgetList(WindowID(#Win_Save)) <> #False
  TextGadget(#G_TX_Save_Path, 5, 5, 300, 15, "Speichern unter")
  StringGadget(#G_SR_Save_Path, 5, 20, 300, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Save_Path, 310, 20, 35, 20, "...")
  TextGadget(#G_TX_Save_Version, 5, 55, 340, 15, "Version")
  StringGadget(#G_SR_Save_Version, 5, 70, 340, 20, "100", #PB_String_Numeric)
   EditControl_SetLimitText(#G_SR_Save_Version, 4)
  TextGadget(#G_TX_Save_Author, 5, 100, 340, 15, "Autor")
  StringGadget(#G_SR_Save_Author, 5, 115, 340, 20, "")
  TextGadget(#G_TX_Save_EMail, 5, 145, 340, 15, "eMail")
  StringGadget(#G_SR_Save_EMail, 5, 160, 340, 20, "")
  TextGadget(#G_TX_Save_Homepage, 5, 190, 340, 15, "Homepage")
  StringGadget(#G_SR_Save_Homepage, 5, 205, 340, 20, "")
  Frame3DGadget(#G_FR_Save_Gap, -5, 245, 360, 2, "", #PB_Frame3D_Single)
  ButtonGadget(#G_BN_Save_Cancel, 190, 260, 75, 24, "Abbrechen")
  ButtonGadget(#G_BN_Save_Save, 270, 260, 75, 24, "Speichern")
 Else
  MsgBox_Error("Fehler beim erstellen von GadgetList 'Save'"): End
 EndIf
 DisableWindow(#Win_Save, #True)
Else
 MsgBox_Error("Fehler beim erstellen von Fenster 'Save'"): End
EndIf

Procedure WindowCallback(hWnd, Msg, wParam, lParam)
 Protected Result.l = #PB_ProcessPureBasicEvents
 Protected *pMinMax.MINMAXINFO
 
 If hWnd = hWnd_Translator And Msg = #WM_GETMINMAXINFO
  *pMinMax.MINMAXINFO = lParam
  *pMinMax\ptMinTrackSize\x = WinMinW_Translator
  *pMinMax\ptMinTrackSize\y = WinMinH_Translator
  *pMinMax\ptMaxTrackSize\y = GetSystemMetrics_(#SM_CYSCREEN)
  *pMinMax\ptMaxTrackSize\x = GetSystemMetrics_(#SM_CXSCREEN)
  Result = 0
 EndIf
 
 ProcedureReturn Result
EndProcedure

Procedure OpenLanguage()
 Protected Result.s
 
 If FileSize(ExePath() + "Launcher\Language\") = -2
  Result = ExePath() + "Launcher\Language\"
 Else
  Result = ExePath()
 EndIf
  
 Result = OpenFileRequester("Sprachdatei Öffnen", Result, "Sprachdatei|*.lng|Alle Dateien|*.*", 0)
 If Result <> ""
  If OpenPreferences(Result) <> #False
   ClearList(Language())
   ClearGadgetItemList(#G_LI_Translator_Language)   
   
   PreferenceGroup("Language")

   ExaminePreferenceKeys()
   While NextPreferenceKey() <> 0
    AddElement(Language())
    Language()\Name    = PreferenceKeyName()
    Language()\OString = ReadPreferenceString(Language()\Name, "")
    AddGadgetItem(#G_LI_Translator_Language, -1, Language()\Name + Chr(10) + Language()\OString)
    While WindowEvent(): Wend
   Wend

   ClosePreferences()
  Else
   MsgBox_Error("Sprachdatei konnte nicht geöffnet werden." + #CRLF$ + "'" + Result + "'")
  EndIf
 EndIf
EndProcedure

Procedure SetSavePath()
 Protected Path.s
 
 If FileSize(ExePath() + "Launcher\Language\") = -2
  Path = ExePath() + "Launcher\Language\Language.lng"
 Else
  Path = ExePath() + "Language.lng"
 EndIf
  
 Path = SaveFileRequester(#PrgName, Path, "Sprachdatei|*.lng|Alle Dateien|*.*", 0)
 If Path <> ""
  
  If SelectedFilePattern() = 0 And UCase(GetExtensionPart(Path)) <> "LNG"
   Path + ".lng"
  EndIf
    
  SetGadgetText(#G_SR_Save_Path, Path)
 EndIf
EndProcedure

Procedure SaveLanguage()
 Protected hFile.l, Path.s, Temp.s
 
 Path = GetGadgetText(#G_SR_Save_Path)
 
 If CountList(Language()) > 0 And Path <> ""
  
  If FileSize(Path) > 0
   If MessageRequester(#PrgName, "Diese Datei existiert bereits, möchten Sie die Datei überschreiben?", #MB_YESNO|#MB_DEFBUTTON2|#MB_ICONQUESTION) = #IDNO
    ProcedureReturn 0
   EndIf
  EndIf
  
  If CreatePreferences(Path) <> #False
   PreferenceComment("Language File for Launcher")
   ;Version
   If GetGadgetText(#G_SR_Save_Version) <> ""
    Temp = Left(GetFilePart(Path), Len(GetFilePart(Path)) - Len(GetExtensionPart(Path)) - 1)
    Temp + ", " + StrF(Val(GetGadgetText(#G_SR_Save_Version))/100, 2)
   Else
    Temp = Left(GetFilePart(Path), Len(GetFilePart(Path)) - Len(GetExtensionPart(Path)) - 1)
   EndIf
   PreferenceComment(Temp)
   ;Copyright
   If GetGadgetText(#G_SR_Save_Author) <> ""
    PreferenceComment("Copyright©" + GetGadgetText(#G_SR_Save_Author) + ", " + FormatDate("%yyyy", Date()))
   EndIf
   ;eMail
   If GetGadgetText(#G_SR_Save_EMail) <> ""
    PreferenceComment("eMail: " + GetGadgetText(#G_SR_Save_EMail))
   EndIf
   ;Homepage
   If GetGadgetText(#G_SR_Save_Homepage) <> ""
    PreferenceComment("Homepage: " + GetGadgetText(#G_SR_Save_Homepage))
   EndIf
   PreferenceComment("")
   PreferenceGroup("Language")
   ForEach Language()
    If Language()\TString <> ""
     WritePreferenceString(Language()\Name, Language()\TString)
    Else
     WritePreferenceString(Language()\Name, Language()\OString)
    EndIf
   Next
     
   ClosePreferences()
   
   DisableWindow(#Win_Save, #True)
   HideWindow(#Win_Save, #True)
   DisableWindow(#Win_Translator, #False)
   
   ProcedureReturn 1
  Else
   MsgBox_Error("Datei konnte nicht gespeichert werden." + #CRLF$ + "'" + Path + "'")
  EndIf
 EndIf
EndProcedure

Procedure RefreshTextFields()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_LI_Translator_Language)
 
 SetGadgetText(#G_SR_Translator_OriginalText, "")
 SetGadgetText(#G_SR_Translator_TranslatedText, "")
 
 If Sel <> -1
  SelectElement(Language(), Sel)
  
  SetGadgetText(#G_SR_Translator_OriginalText, ReplaceString(Language()\OString, "|", #CRLF$))
  SetGadgetText(#G_SR_Translator_TranslatedText, ReplaceString(Language()\TString, "|", #CRLF$))
 EndIf
EndProcedure

Procedure ApplyText()
 Protected Sel.l, OString.s, TString.s
 
 Sel     = GetGadgetState(#G_LI_Translator_Language)
 OString = GetGadgetText(#G_SR_Translator_OriginalText)
 TString = GetGadgetText(#G_SR_Translator_TranslatedText)
 
 If OString <> TString And TString <> "" And Sel <> -1
  SelectElement(Language(), Sel)
 
  Language()\TString = ReplaceString(TString, #CRLF$, "|")
  
  SetGadgetItemText(#G_LI_Translator_Language, Sel, Language()\TString, 1)
  
  SetGadgetText(#G_SR_Translator_TranslatedText, "")
 EndIf
EndProcedure

Procedure Reset()
 If CountList(Language()) > 0
  If MessageRequester("#PrgName", "Möchten Sie die Sprache wirklich zurücksetzen?", #MB_YESNO|#MB_DEFBUTTON2|#MB_ICONQUESTION) = #IDYES
   ForEach Language()
    SetGadgetItemText(#G_LI_Translator_Language, ListIndex(Language()), Language()\OString, 1)
    Language()\TString = ""
   Next
   SetGadgetState(#G_LI_Translator_Language, -1)
   SetGadgetText(#G_SR_Translator_OriginalText, "")
   SetGadgetText(#G_SR_Translator_TranslatedText, "")
  EndIf
 EndIf
EndProcedure

AddKeyboardShortcut(#Win_Translator, #PB_Shortcut_Control|#PB_Shortcut_O, #Mnu_FileOpen)
AddKeyboardShortcut(#Win_Translator, #PB_Shortcut_Control|#PB_Shortcut_S, #Mnu_FileSave)
AddKeyboardShortcut(#Win_Translator, #PB_Shortcut_Control|#PB_Shortcut_W, #Mnu_FileClose)
AddKeyboardShortcut(#Win_Translator, #PB_Shortcut_Control|#PB_Shortcut_R, #Mnu_Reset)
AddKeyboardShortcut(#Win_Translator, #PB_Shortcut_Control|#PB_Shortcut_Return, #Mnu_Apply)

SetWindowCallback(@WindowCallback())
HideWindow(#Win_Translator, #False)
Repeat
 L_WindowEvent = WaitWindowEvent()
 L_EventWindow = EventWindow()
 L_EventGadget = EventGadget()
 L_EventMenu   = EventMenu()
 L_EventType   = EventType()

 ;PB_Event_Menu
 If L_WindowEvent = #PB_Event_Menu
  Select L_EventMenu
   Case #Mnu_FileOpen
    OpenLanguage()
   Case #Mnu_FileSave
    If CountList(Language()) > 0
     Window_CenterOnWindow(#Win_Save, #Win_Translator)
     DisableWindow(#Win_Translator, #True)
     DisableWindow(#Win_Save, #False)
     HideWindow(#Win_Save, #False)
     SetGadgetText(#G_SR_Save_Path, "")
     SetGadgetText(#G_SR_Save_Version, "1.00")
     SetGadgetText(#G_SR_Save_Author, "")
     SetGadgetText(#G_SR_Save_EMail, "")
     SetGadgetText(#G_SR_Save_Homepage, "")
    EndIf
   Case #Mnu_FileClose
    If CountList(Language()) > 0
     If MessageRequester("Schliessen", "Aktuelle Sprachdatei wirklich schliessen?", #MB_YESNO|#MB_DEFBUTTON2|#MB_ICONQUESTION) = #IDYES
      ClearGadgetItemList(#G_LI_Translator_Language)
      ClearList(Language())
     EndIf
    EndIf
   Case #Mnu_End
    End
   Case #Mnu_Help
    If FileSize(ExePath() + "Launcher\Launcher.chm") > 0
     OpenHelp(ExePath() + "Launcher\Launcher.chm", "")
    EndIf
   Case #Mnu_Info
    MessageRequester("Informationen", #PrgName + " Version " + StrF(#PrgVers/100, 2) + #CRLF$ + #CRLF$ + "Copyright©PureSoft, Kai Gartenschläger, 2007", #MB_OK|#MB_ICONINFORMATION)
   Case #Mnu_Apply
    ApplyText()
   Case #Mnu_Reset
    Reset()
  EndSelect
 EndIf
 
 If L_WindowEvent = #PB_Event_Gadget
  Select L_EventWindow
   Case #Win_Translator
    Select L_EventGadget
     Case  #G_LI_Translator_Language
      RefreshTextFields()
    EndSelect
   Case #Win_Save
    Select L_EventGadget
     Case #G_BN_Save_Path
      SetSavePath()
     Case #G_BN_Save_Save
      SaveLanguage()
     Case #G_BN_Save_Cancel
      DisableWindow(#Win_Save, #True)
      HideWindow(#Win_Save, #True)
      DisableWindow(#Win_Translator, #False)
    EndSelect
  EndSelect
 EndIf
  
 ;PB_Event_CloseWindow
 If L_WindowEvent = #PB_Event_CloseWindow
  Select L_EventWindow
   Case #Win_Save
    DisableWindow(#Win_Save, #True)
    HideWindow(#Win_Save, #True)
    DisableWindow(#Win_Translator, #False)
    SetGadgetText(#G_SR_Translator_OriginalText, "")
    SetGadgetText(#G_SR_Translator_TranslatedText, "")
   Case #Win_Translator
    End
  EndSelect
 EndIf
 
 ;PB_Event_Move
 If L_WindowEvent = #PB_Event_MoveWindow
  Select L_EventWindow
  EndSelect
 EndIf
 
 ;PB_Event_SizeWindow
 If L_WindowEvent = #PB_Event_SizeWindow
  Select L_EventWindow
   Case #Win_Translator
    GAS_ResizeGadgets(#PB_Event_SizeWindow, #Win_Translator)
    SetGadgetItemAttribute(#G_LI_Translator_Language, -1, #PB_ListIcon_ColumnWidth, GadgetWidth(#G_LI_Translator_Language) - (GadgetWidth(#G_LI_Translator_Language) * 80 / 100) - 3, 0)
    SetGadgetItemAttribute(#G_LI_Translator_Language, -1, #PB_ListIcon_ColumnWidth, GadgetWidth(#G_LI_Translator_Language) - (GadgetWidth(#G_LI_Translator_Language) * 20 / 100) - 3 - GetSystemMetrics_(#SM_CXHTHUMB), 1)
  EndSelect
 EndIf
ForEver
; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 187
; FirstLine = 72
; Folding = wH5-
; EnableXP
; UseIcon = Ressource\Translator.ico
; Executable = Translator.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 2
; EnableBuildCount = 2
; EnableExeConstant
; IncludeVersionInfo
; VersionField0 = 1,0,0,0
; VersionField1 = 1,0,0,0
; VersionField2 = PureSoft
; VersionField3 = Launcher Language Translator
; VersionField4 = 1.00
; VersionField5 = 1.00
; VersionField6 = Übersetzung für Sprachdateien von Launcher
; VersionField7 = Launcher Language Translator
; VersionField8 = Translator.exe
; VersionField9 = Copyright©PureSoft, 2007
; VersionField13 = mail@kaispage.de
; VersionField14 = http://www.kaispage.de/launcher/
; VersionField15 = VOS_NT_WINDOWS32
; VersionField16 = VFT_APP
; VersionField17 = 0407 German (Standard)