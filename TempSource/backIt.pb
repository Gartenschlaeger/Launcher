Enumeration 
 #Win_Main
EndEnumeration

Enumeration 
 ;Control
 #G_CE_Drive
 #G_BN_Start
 #G_BN_Cancel
 #G_TX_CompresLevel
 #G_SP_CompresLevel
 ;Init
 #G_FR_Init
 #G_TX_Folder
 #G_SR_Folder
 #G_TX_Files
 #G_SR_Files
 #G_TX_Space
 #G_SR_Space
 #G_SR_CurentFolder
 #G_TX_CurentFolder
 ;Backup
 #G_FR_Backup
 #G_PB_Backup_Status
 #G_TX_Backup_Percent
 #G_TX_Backup_CurentFile
 #G_PB_Backup_CurentFile
 #G_TX_Backup_CompresedSize
 #G_SR_Backup_CompresedSize
 ;Log
 #G_LV_Log
EndEnumeration

Global L_WindowEvent.l, L_EventWindow.l, L_EventGadget.l
Global Size.q, Files.q, Folders.q, Timer.l, Cancel.l, Counter.l, CompresLevel.l

Global WinFont = FontID(LoadFont(#PB_Any, "Tahoma", 8, 0))

Structure Files
 Path.s
 Size.l
EndStructure
Global NewList File.Files()

Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

If OpenWindow(#Win_Main, 0, 0, 640, 480, "Launcher - Back'It", #PB_Window_Invisible|#PB_Window_SystemMenu|#PB_Window_ScreenCentered|#PB_Window_MinimizeGadget) <> 0
 ;If CreateGadgetList(WindowID(#Win_Main)) <> 0
  ;Control
  ExplorerComboGadget(#G_CE_Drive, 5, 5, 180, 20, "C:\", #PB_Explorer_DrivesOnly)
  ButtonGadget(#G_BN_Start, 190, 5, 75, 22, "Start")
  ButtonGadget(#G_BN_Cancel, 270, 5, 75, 22, "Abbrechen")
  TextGadget(#G_TX_CompresLevel, WindowWidth(#Win_Main) - 235, 8, 150, 13, "Komprimierungsgrad:", #PB_Text_Right)
   SetGadgetFont(#G_TX_CompresLevel, WinFont)
  SpinGadget(#G_SP_CompresLevel, WindowWidth(#Win_Main) - 85, 5, 80, 22, 0, 9, #PB_Spin_ReadOnly|#PB_Spin_Numeric)
   SetGadgetState(#G_SP_CompresLevel, 5)
  ;Init
  Frame3DGadget(#G_FR_Init, -5, 35, 650, 2, "", #PB_Frame3D_Single)
  TextGadget(#G_TX_Folder, 5, 45, 68, 13, "Ordner:")
   SetGadgetFont(#G_TX_Folder, WinFont)
  StringGadget(#G_SR_Folder, GadgetX(#G_TX_Folder) + GadgetWidth(#G_TX_Folder) + 1, GadgetY(#G_TX_Folder) - 3, 560, 20, "", #PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Folder, WinFont)
  TextGadget(#G_TX_Files, 5, 70, 68, 13, "Dateien:")
   SetGadgetFont(#G_TX_Files, WinFont)
  StringGadget(#G_SR_Files, GadgetX(#G_TX_Files) + GadgetWidth(#G_TX_Files) + 1, GadgetY(#G_TX_Files) - 3, 560, 20, "", #PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Files, WinFont)
  TextGadget(#G_TX_Space, 5, 95, 68, 13, "Größe:")
   SetGadgetFont(#G_TX_Space, WinFont)
  StringGadget(#G_SR_Space, GadgetX(#G_TX_Space) + GadgetWidth(#G_TX_Space) + 1, GadgetY(#G_TX_Space) - 3, 560, 20, "", #PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Space, WinFont)
  TextGadget(#G_TX_CurentFolder, 5, 120, 68, 13, "Akt. Ordner:")
   SetGadgetFont(#G_TX_CurentFolder, WinFont)
  StringGadget(#G_SR_CurentFolder, GadgetX(#G_TX_CurentFolder) + GadgetWidth(#G_TX_CurentFolder) + 1, GadgetY(#G_TX_CurentFolder) - 3, 560, 20, "", #PB_String_ReadOnly)
   SetGadgetFont(#G_SR_CurentFolder, WinFont)
  ;Backup
  Frame3DGadget(#G_FR_Backup, -5, 145, 650, 2, "", #PB_Frame3D_Single)
  ProgressBarGadget(#G_PB_Backup_Status, 5, 160, 592, 15, 0, 0)
  TextGadget(#G_TX_Backup_Percent, GadgetX(#G_PB_Backup_Status) + GadgetWidth(#G_PB_Backup_Status) + 2, GadgetY(#G_PB_Backup_Status), 35, 15, "", #PB_Text_Right)
   SetGadgetFont(#G_TX_Backup_Percent, WinFont)
  TextGadget(#G_TX_Backup_CurentFile, 5, 180, 500, 13, "Akt. Datei:")
   SetGadgetFont(#G_TX_Backup_CurentFile, WinFont)  
  ProgressBarGadget(#G_PB_Backup_CurentFile, 5, 195, 630, 15, 0, 0)
  TextGadget(#G_TX_Backup_CompresedSize, 5, 220, 68, 13, "Komprimiert:")
   SetGadgetFont(#G_TX_Backup_CompresedSize, WinFont)
  StringGadget(#G_SR_Backup_CompresedSize, GadgetX(#G_TX_Backup_CompresedSize) + GadgetWidth(#G_TX_Backup_CompresedSize) + 1, GadgetY(#G_TX_Backup_CompresedSize) - 3, 560, 20, "", #PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backup_CompresedSize, WinFont)
  ;Log
  ListViewGadget(#G_LV_Log, 5, WindowHeight(#Win_Main) - 150, WindowWidth(#Win_Main) - 10, 145)
 ;Else
 ; MsgBox_Error("Fehler beim erstellen von GadgetList 'Main'"): End
 ;EndIf
Else
 MsgBox_Error("Fehler beim erstellen von Fenster 'Main'"): End
EndIf

Macro AddLog(Text)
 AddGadgetItem(#G_LV_Log, -1, Text)
 SetGadgetState(#G_LV_Log, CountGadgetItems(#G_LV_Log) - 1)
EndMacro

Procedure WindowEventProgress()
 Repeat
  L_WindowEvent = WindowEvent()
  
  If L_WindowEvent = 0
   ProcedureReturn 0
  EndIf
  
  If L_WindowEvent = #PB_Event_Gadget And EventGadget() = #G_BN_Cancel
   Cancel = #True
  EndIf
 ForEver
EndProcedure

Procedure PackCallback(SourcePosition, DestinationPosition)
 SetGadgetState(#G_PB_Backup_CurentFile, SourcePosition)
 WindowEventProgress()
 
 If Cancel = 1
  ProcedureReturn 0
 Else
  ProcedureReturn 1
 EndIf
EndProcedure

Procedure Backup()
 Protected SizeC.q, Pack.s
 
 CompresLevel = GetGadgetState(#G_SP_CompresLevel)
 Pack = GetHomeDirectory() + "Desktop\" + FormatDate("%dd-%mm-%yy_%hh-%ii-%ss", Date())
 
 If ListSize(File()) > 0
  If CreatePack(Pack)
   
   DisableGadget(#G_SP_CompresLevel, #True)
   
   PackerCallback(@PackCallback())
   
   SetGadgetAttribute(#G_PB_Backup_Status, #PB_ProgressBar_Maximum, Files)
   
   AddLog("Begin des Backups")
    
   ForEach File()
    SetGadgetState(#G_PB_Backup_Status, ListIndex(File()))
    SetGadgetText(#G_TX_Backup_Percent, Str((ListIndex(File()) * 100) / Files) + "%")
    SetGadgetText(#G_TX_Backup_CurentFile, Str(ListIndex(File())) + ": " + GetFilePart(File()\Path))
    SetGadgetText(#G_SR_Backup_CompresedSize, Str((SizeC - FileSize(Pack)) / 1048576) + " MB")
    
    If FileSize(File()\path) = -1
     AddLog("Fehler: Fehlende Datei: " + File()\path)
    Else
     SetGadgetAttribute(#G_PB_Backup_CurentFile, #PB_ProgressBar_Maximum, File()\Size)
     
     AddPackFile(File()\Path, 9)
     SizeC + File()\Size
    EndIf
   
    If Cancel = 1
     DisableGadget(#G_SP_CompresLevel, #False)
     Break: ProcedureReturn 0
    EndIf
   
   Next
   
   ClosePack()
   
   AddLog("Backup fertiggestellt")
  
   DisableGadget(#G_CE_Drive, #False)
   DisableGadget(#G_BN_Start, #False)
   DisableGadget(#G_SP_CompresLevel, #False)
  Else
   AddLog("Fehler: Archiv konnte nicht erstellt werden.")
  EndIf
 EndIf
EndProcedure

Procedure Dir(Path$, Reset = 0)
 Protected hDir.l

 hDir = ExamineDirectory(#PB_Any, Path$, "*.*")
 If hDir <> 0
  
  Counter + 1
  
  If Reset = 1
   Cancel  = 0
   ClearList(File())
   Size    = 0
   Files   = 0
   Folders = 0
   Timer   = timeGetTime_()
   
   DisableGadget(#G_CE_Drive, #True)
   DisableGadget(#G_BN_Start, #True)
  EndIf
  
  While NextDirectoryEntry(hDir)
   If Cancel = #True
    Break: ProcedureReturn 0
   EndIf
   
   If DirectoryEntryType(hDir) = #PB_DirectoryEntry_Directory
    If DirectoryEntryName(hDir) <> ".." And DirectoryEntryName(hDir) <> "."
     Folders + 1: SetGadgetText(#G_SR_Folder, Str(Folders))
     
     SetGadgetText(#G_SR_CurentFolder, Path$ + DirectoryEntryName(hDir))
     
     If Right(Path$, 1) <> "\": Path$ + "\": EndIf
     Dir(Path$ + DirectoryEntryName(hDir))
    EndIf
   EndIf
   
   If DirectoryEntryType(hDir) = #PB_DirectoryEntry_File
    Files + 1: SetGadgetText(#G_SR_Files, Str(Files))
    Size + DirectoryEntrySize(hDir): SetGadgetText(#G_SR_Space, Str(Size / 1048576) + " MB")
    
    AddElement(File())
    If Right(Path$, 1) <> "\": Path$ + "\": EndIf
    File()\Path = Path$ + DirectoryEntryName(hDir)
    File()\Size = DirectoryEntrySize(hDir)
   EndIf
   
   If timeGetTime_() - Timer >= 10
    Timer = timeGetTime_()
    WindowEventProgress()
   EndIf
  Wend
  
  FinishDirectory(hDir)
  
  Counter - 1
  
  If Counter <= 0
   If ListSize(File()) > 0 And Cancel = 0
    AddLog("Datenträgerinitialisierung fertiggestellt")
    Backup()
   Else
    AddLog("Abgebrochen vom Benutzer")
    DisableGadget(#G_CE_Drive, #False)
    DisableGadget(#G_BN_Start, #False)
    ProcedureReturn 0
   EndIf
  EndIf
  
 Else
  AddLog("Fehler: Ungültiges Verzeichnis " + Path$)
 EndIf
EndProcedure

HideWindow(#Win_Main, #False)
Repeat
 L_WindowEvent = WaitWindowEvent()
 L_EventWindow = EventWindow()
 L_EventGadget = EventGadget()
 
 If L_WindowEvent = #PB_Event_Gadget
  Select L_EventGadget
   Case #G_BN_Start: Dir(GetGadgetText(#G_CE_Drive), 1)
  EndSelect
 EndIf
 If L_WindowEvent = #PB_Event_CloseWindow
  Select L_EventWindow
   Case #Win_Main: End
  EndSelect
 EndIf
ForEver
; IDE Options = PureBasic 4.50 Beta 3 (Windows - x86)
; CursorPosition = 135
; FirstLine = 125
; Folding = --
; EnableXP
; EnableAdmin
; Executable = C:\Dokumente und Einstellungen\Kai Gartenschläger\Desktop\BackIt.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 8
; EnableBuildCount = 0
; EnableExeConstant