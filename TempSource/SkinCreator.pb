EnableExplicit

;Fehlerprotokol
Declare ErrorHandler()
OnErrorGosub(@ErrorHandler())

;Startüberprüfung
Global L_hSemaphore.l
L_hSemaphore = CreateSemaphore_(#Null, #Null, 1, "1EB09A8D-8AAA-4921-83A6-1424BB4A3318")
If L_hSemaphore <> 0 And GetLastError_() = #ERROR_ALREADY_EXISTS: End: EndIf

Enumeration
 #Win_Main
EndEnumeration

Enumeration
 #G_TX_Main_ResPath
 #G_SR_Main_ResPath
 #G_BN_Main_ResPath
 #G_TX_Main_SkinPath
 #G_SR_Main_SkinPath
 #G_BN_Main_SkinPath
 #G_LI_Main_Preferences
 #G_LV_Main_Log
 #G_BN_Main_Create
EndEnumeration

#PrgName       = "Launcher - SkinCreator"
#PrgVers       = "1.00"
#S_TestSkin    = "F_SK"

#Len_Name      = 30
#Len_Autor     = 30
#Len_Version   = 3
#Len_Homepage  = 50
#Len_Color     = 8

Global L_WindowEvent.l, L_EventWindow.l, L_EventGadget.l, L_EventMenu.l, L_EventType.l

Procedure ErrorHandler()
 Protected errorMsg$
 errorMsg$ = "Anzahl: " + Str(GetErrorCounter()) + #CRLF$ + "Zeile: " + Str(GetErrorLineNR()) + #CRLF$ + "Adresse: " + Str(GetErrorAddress()) + #CRLF$ + "Beschreibung: " + GetErrorDescription()
 If MessageRequester(#PrgName, #PrgName + " hat einen Fehler verursacht." + #CRLF$ + #CRLF$ + errorMsg$ + #CRLF$ + #CRLF$ + "Fehler ignorieren?", #MB_YESNO|#MB_ICONERROR) = #IDNO
  SetClipboardText(errorMsg$)
  End
 EndIf
EndProcedure

Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Procedure.s ExePath()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetPathPart(Path$)
EndProcedure

;{ Dateiliste
Structure FL
 Path.s
 ImgW.l
 ImgH.l
EndStructure
Global NewList FileList.FL()

Macro AddFile(File, Width, Height)
 AddElement(FileList())
 FileList()\Path = File
 FileList()\ImgW = Width
 FileList()\ImgH = Height
EndMacro

AddFile("Preview.bmp", 150, 210)
AddFile("Icon.ico", 16, 16)
AddFile("Background.bmp", 400, 560)
AddFile("Btn_Drive.bmp", 120, 32)
AddFile("Btn_Drive_Over.bmp", 120, 32)
AddFile("Btn_OwnFiles.bmp", 120, 32)
AddFile("Btn_OwnFiles_Over.bmp", 120, 32)
AddFile("Btn_Documents.bmp", 120, 32)
AddFile("Btn_Documents_Over.bmp", 120, 32)
AddFile("Btn_Music.bmp", 120, 32)
AddFile("Btn_Music_Over.bmp", 120, 32)
AddFile("Btn_Pictures.bmp", 120, 32)
AddFile("Btn_Pictures_Over.bmp", 120, 32)
AddFile("Btn_Movies.bmp", 120, 32)
AddFile("Btn_Movies_Over.bmp", 120, 32)
AddFile("Btn_Search.bmp", 120, 32)
AddFile("Btn_Search_Over.bmp", 120, 32)
AddFile("Btn_Preferences.bmp", 120, 32)
AddFile("Btn_Preferences_Over.bmp", 120, 32)
AddFile("Btn_Misc.bmp", 120, 32)
AddFile("Btn_Misc_Over.bmp", 120, 32)
AddFile("Btn_End.bmp", 80, 24)
AddFile("Btn_End_Over.bmp", 80, 24)
AddFile("Percent_Back.bmp", 102, 16)
AddFile("Percent_Bar.bmp", 1, 14)
Define x.l
For x = 1 To 20
 AddFile("Mnu_" + RSet(Str(x), 2, "0") + ".bmp", 250, 24)
Next
For x = 1 To 20
 AddFile("Mnu_" + RSet(Str(x), 2, "0") + "_Over.bmp", 250, 24)
Next
;}

Procedure ListIconGadget_EnableHeader(Gadget, Bool)
 Protected Header.l
 If IsGadget(Gadget) <> 0 And GadgetType(Gadget) = #PB_GadgetType_ListIcon
  Header = SendMessage_(GadgetID(Gadget), #LVM_FIRST + 31, #Null, #Null)
  EnableWindow_(Header, Bool)
 EndIf
EndProcedure

Macro InvertColor(Color)
 16777215 - Color
EndMacro

If OpenWindow(#Win_Main, 0, 0, 660, 300, #PrgName + " " + #PrgVers, #PB_Window_SystemMenu|#PB_Window_MinimizeGadget|#PB_Window_Invisible|#PB_Window_TitleBar|#PB_Window_ScreenCentered)
 If CreateGadgetList(WindowID(#Win_Main))
  TextGadget(#G_TX_Main_ResPath, 5, 5, 395, 13, "Ressourcen")
  StringGadget(#G_SR_Main_ResPath, 5, 20, 355, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Main_ResPath, 365, 20, 35, 20, "..."): GadgetToolTip(#G_BN_Main_ResPath, "Suchen")
  TextGadget(#G_TX_Main_SkinPath, 5, 50, 395, 13, "Skin speichern unter")
  StringGadget(#G_SR_Main_SkinPath, 5, 65, 355, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Main_SkinPath, 365, 65, 35, 20, "..."): GadgetToolTip(#G_BN_Main_SkinPath, "Suchen")
  ListIconGadget(#G_LI_Main_Preferences, 5, 90, 395, 175, "", 0, #PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_FullRowSelect)
   AddGadgetColumn(#G_LI_Main_Preferences, 0, "Bezeichnung", 150)
   AddGadgetColumn(#G_LI_Main_Preferences, 1, "Wert", 230)
   ListIconGadget_EnableHeader(#G_LI_Main_Preferences, #False)
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Name")
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Autor")
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Version")
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Homepage")
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Textfarbe Normal")
   AddGadgetItem(#G_LI_Main_Preferences, -1, "Textfarbe Mausberührung")
  ListViewGadget(#G_LV_Main_Log, 405, 5, 250, 260)
  ButtonGadget(#G_BN_Main_Create, 575, 270, 80, 25, "Erstellen")
 EndIf
EndIf

Procedure ChangeResPath()
 Protected Path.s
 
 Path = PathRequester("Ressourcen", ExePath() + "Launcher\Skin\")
 If Path <> ""
  SetGadgetText(#G_SR_Main_ResPath, Path)
 EndIf
EndProcedure

Procedure ChangeSkinPath()
 Protected Path.s, File.s
 
 If GetGadgetItemText(#G_LI_Main_Preferences, 0, 1) <> ""
  File = GetGadgetItemText(#G_LI_Main_Preferences, 0, 1) + ".skn"
 Else
  File = "NeuerSkin.skn"
 EndIf
 
 Path = SaveFileRequester(#PrgName, ExePath() + "Launcher\Skin\" + File, "Skin|*.skn|Alle Dateien|*.*", 0)
 If Path <> ""
  If SelectedFilePattern() = 0 And GetExtensionPart(Path) = ""
   Path + ".skn"
  EndIf
  SetGadgetText(#G_SR_Main_SkinPath, Path)
 EndIf
EndProcedure

Procedure CheckCreateState()
 Protected Bool.l
 If GetGadgetText(#G_SR_Main_ResPath) = "": Bool = #True: EndIf
 If GetGadgetText(#G_SR_Main_SkinPath) = "": Bool = #True: EndIf
 If GetGadgetItemText(#G_LI_Main_Preferences, 0, 1) = "": Bool = #True: EndIf
 If GetGadgetItemText(#G_LI_Main_Preferences, 1, 1) = "": Bool = #True: EndIf
 If GetGadgetItemText(#G_LI_Main_Preferences, 2, 1) = "": Bool = #True: EndIf
 If GetGadgetItemText(#G_LI_Main_Preferences, 3, 1) = "": Bool = #True: EndIf
 DisableGadget(#G_BN_Main_Create, Bool)
 ProcedureReturn Bool
EndProcedure

Procedure ChangeData()
 Protected Sel.l, SResult.s, CResult.l
 
 Sel = GetGadgetState(#G_LI_Main_Preferences)
 If Sel <> -1
  Select Sel
   Case 0 To 3 ;Name bis Homepage
    SResult = InputRequester(#PrgName, "Name:", GetGadgetItemText(#G_LI_Main_Preferences, Sel, 1))
    If SResult <> ""
     Select Sel
      Case 0: SetGadgetItemText(#G_LI_Main_Preferences, 0, Left(SResult, #Len_Name), 1)
      Case 1: SetGadgetItemText(#G_LI_Main_Preferences, 1, Left(SResult, #Len_Autor), 1)
      Case 2: SetGadgetItemText(#G_LI_Main_Preferences, 2, Left(Str(Val(SResult)), #Len_Version), 1)
      Case 3: SetGadgetItemText(#G_LI_Main_Preferences, 3, Left(SResult, #Len_Homepage), 1)
     EndSelect
    EndIf
   Case 4, 5 ;Farben
    CResult = ColorRequester( GetGadgetItemColor(#G_LI_Main_Preferences, Sel, #PB_Gadget_BackColor, 1))
    If CResult <> -1
     SetGadgetItemColor(#G_LI_Main_Preferences, Sel, #PB_Gadget_BackColor, CResult, 1)
     SetGadgetItemColor(#G_LI_Main_Preferences, Sel, #PB_Gadget_FrontColor, InvertColor(CResult), 1)
     SetGadgetItemText(#G_LI_Main_Preferences, Sel, "$" + Hex(CResult), 1)
    EndIf
  EndSelect
 EndIf
EndProcedure

Macro AddLog(Text)
 AddGadgetItem(#G_LV_Main_Log, -1, Text): SetGadgetState(#G_LV_Main_Log, CountGadgetItems(#G_LV_Main_Log) - 1)
EndMacro

Procedure CreateSkin()
 Protected hFile.l, hImg.l, Path_Ressource.s, Path_Skin.s, x.l

 Path_Ressource = GetGadgetText(#G_SR_Main_ResPath)
 Path_Skin      = GetGadgetText(#G_SR_Main_SkinPath)

 If FileSize(Path_Ressource) = -2
  
  ;Überschreiben
  If FileSize(Path_Skin) > 0
   If MessageRequester(#PrgName, "Datei " + "'" + GetFilePart(Path_Skin) + "' existiert bereits." + #CRLF$ + "Möchten Sie die Datei überschreiben?", #MB_ICONQUESTION|#MB_YESNO) = #IDNO
    ProcedureReturn 0
   EndIf
  EndIf
  
  ClearGadgetItemList(#G_LV_Main_Log)
  
  DisableGadget(#G_BN_Main_Create, #True)
  
  ;Archiv erstellen
  If CreatePack(Path_Skin) = #False
   MsgBox_Error("Skin konnte nicht erstellt werden," + #CRLF$ + "da keine Datei erstellt werden konnte." + #CRLF$ + "'" + GetFilePart(Path_Skin) + "'")
   DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
  
  Else
   
   ;Dateien hinzufügen
   ForEach FileList()
    AddLog("Füge Datei " + FileList()\Path + " hinzu..")
    
    If FileSize(Path_Ressource + FileList()\Path) < 0
     MsgBox_Error("Datei konnte nicht gefunden werden." + #CRLF$ + GetFilePart(FileList()\Path))
     DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
    Else
     
     ;Image überprüfen
     hImg = LoadImage(#PB_Any, Path_Ressource + FileList()\Path)
     If hImg <> 0
      If ImageWidth(hImg) <> FileList()\ImgW Or ImageHeight(hImg) <> FileList()\ImgH
       FreeImage(hImg)
       MsgBox_Error("Ungültige Grafik: '" + GetFilePart(FileList()\Path) + "'" + #CRLF$ + "Es wird ein Bitmap mit " + Str(FileList()\ImgW) + "Px x " + Str(FileList()\ImgH) + "Px erwartet.")
       DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
      EndIf
     Else
      MsgBox_Error("Ungültige Grafik: '" + GetFilePart(FileList()\Path) + "'" + #CRLF$ + "Es wird ein Bitmap erwartet.")
      DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
     EndIf
     
     ;Zum Archiv hinzufügen
     AddPackFile(Path_Ressource + FileList()\Path, 9)
    
    EndIf
   
   Next
   
   ClosePack()
  EndIf
   
  ;Header schreiben 
  hFile = OpenFile(#PB_Any, Path_Skin)
  If hFile <> 0
   AddLog("Header wird erstellt..")
   FileSeek(hFile, Lof(hFile))
   WriteString(hFile, #S_TestSkin)
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_Main_Preferences, 0, 1)), #Len_Name, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_Main_Preferences, 1, 1)), #Len_Autor, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_Main_Preferences, 2, 1)), #Len_Version, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_Main_Preferences, 3, 1)), #Len_Homepage, " "))
   WriteLong(hFile, GetGadgetItemColor(#G_LI_Main_Preferences, 4, #PB_Gadget_BackColor, 1))
   WriteLong(hFile, GetGadgetItemColor(#G_LI_Main_Preferences, 5, #PB_Gadget_BackColor, 1))
   CloseFile(hFile)
  Else
   MsgBox_Error("Header konnte nicht geschrieben werden." + #CRLF$ + "'" + GetFilePart(Path_Skin) + "'")
   DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
  EndIf
 
  SetGadgetText(#G_SR_Main_ResPath, "")
  SetGadgetText(#G_SR_Main_SkinPath, "")
  For x = 0 To 3: SetGadgetItemText(#G_LI_Main_Preferences, x, "", 1): Next
  For x = 4 To 5: SetGadgetItemColor(#G_LI_Main_Preferences, x, #PB_Gadget_BackColor, $000000, 1): SetGadgetItemColor(#G_LI_Main_Preferences, x, #PB_Gadget_FrontColor, $FFFFFF, 1): Next
  
  AddLog("Skin erfolgreich erstellt")
  MessageBeep_(#MB_ICONINFORMATION)
 Else
  MsgBox_Error("Das Ressource Verzeichnis exisitert nicht." + #CRLF$ + "'" + Path_Ressource + "'")
  DisableGadget(#G_BN_Main_Create, #False): ProcedureReturn 0
 EndIf
EndProcedure

Procedure Beenden()
 CloseHandle_(L_hSemaphore)
 End
EndProcedure

CompilerIf #PB_Compiler_Debugger = #True
 SetGadgetItemText(#G_LI_Main_Preferences, 0, "Name", 1)
 SetGadgetItemText(#G_LI_Main_Preferences, 1, "Autor", 1)
 SetGadgetItemText(#G_LI_Main_Preferences, 2, "100", 1)
 SetGadgetItemText(#G_LI_Main_Preferences, 3, "http://www.google.de", 1)
 SetGadgetItemColor(#G_LI_Main_Preferences, 4, #PB_Gadget_BackColor, 0, 1)
 SetGadgetItemText(#G_LI_Main_Preferences, 4, "$" + Hex(0), 1)
 SetGadgetItemColor(#G_LI_Main_Preferences, 4, #PB_Gadget_FrontColor, InvertColor(0), 1)
 SetGadgetItemColor(#G_LI_Main_Preferences, 5, #PB_Gadget_BackColor, 0, 1)
 SetGadgetItemText(#G_LI_Main_Preferences, 5, "$" + Hex(0), 1)
 SetGadgetItemColor(#G_LI_Main_Preferences, 5, #PB_Gadget_FrontColor, InvertColor(0), 1)
CompilerEndIf

CheckCreateState()
HideWindow(#Win_Main, #False)
Repeat
 L_WindowEvent = WindowEvent()
 L_EventWindow = EventWindow()
 L_EventGadget = EventGadget()
 L_EventMenu   = EventMenu()
 L_EventType   = EventType()

 Select L_WindowEvent
  ;- Event_Gadget
  Case #PB_Event_Gadget
   Select L_EventGadget
    Case #G_BN_Main_ResPath
     ChangeResPath()
    Case #G_BN_Main_SkinPath
     ChangeSkinPath()
    Case #G_LI_Main_Preferences
     If L_EventType = #PB_EventType_LeftDoubleClick
      ChangeData()
     EndIf
    Case #G_BN_Main_Create
     If CheckCreateState() = #False
      CreateThread(@CreateSkin(), 0)
     EndIf
   EndSelect
   CheckCreateState()
  Case #PB_Event_CloseWindow: Beenden()
  Case #False:                Delay(2)
 EndSelect
ForEver
; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 74
; FirstLine = 34
; Folding = rz-
; EnableXP
; EnableOnError
; UseIcon = ..\Ressource\Main.ico
; Executable = ..\SkinCreator.exe
; CPU = 1