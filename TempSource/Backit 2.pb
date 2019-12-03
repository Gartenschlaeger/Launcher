;// ---------------------------------------------------------------------------
;// Name:                  Launcher - Back'It
;// Version:               1.00
;// Autor:                 Kai Gartenschläger
;// Letzte Bearbeitung:    27.06.2007
;// ---------------------------------------------------------------------------

EnableExplicit

Enumeration
 #Win_Backit
 #Win_Backit_Create
EndEnumeration

Enumeration
 #MenuBar_Backit
EndEnumeration

Enumeration
 #Mnu_Backit_Create
 #Mnu_Backit_Recovery
 #Mnu_Backit_End
 #Mnu_Backit_Info
EndEnumeration

Enumeration
 #G_TX_Backit_Information ;Main
 #G_FR_Backit_Seperator
 #G_SR_Backit_FolderDesc
 #G_SR_Backit_Folder
 #G_SR_Backit_FilesDesc
 #G_SR_Backit_Files
 #G_SR_Backit_SizeDesc
 #G_SR_Backit_Size
 #G_SR_Backit_CurFolderDesc
 #G_SR_Backit_CurFolder
 #G_SR_Backit_CurFileDesc
 #G_SR_Backit_CurFile
 #G_SR_Backit_CompresDesc
 #G_SR_Backit_Compres
 #G_SR_Backit_Progress
 #G_TX_Backit_Percent
 #G_PB_Backit_Progress
 #G_PB_Backit_File
 #G_LV_Backit_Log
 #G_BN_Backit_Cancel
 #G_TX_Backit_Create_Ressource ;CreateBackup
 #G_SR_Backit_Create_Ressource
 #G_BN_Backit_Create_Ressource
 #G_TX_Backit_Create_Save
 #G_SR_Backit_Create_Save
 #G_BN_Backit_Create_Save
 #G_TX_Backit_Create_Compress
 #G_CB_Backit_Create_Compress
 #G_FR_Backit_Create_Seperator
 #G_BN_Backit_Create_Cancel
 #G_BN_Backit_Create_Create
EndEnumeration

#PrgName = "Launcher - Back'It"
#PrgVers = 100

Global L_WindowEvent.l, L_EventWindow.l, L_EventMenu.l, L_EventGadget.l, x.l

Global B_Cancel.l

Global B_CompresLevel.l, L_DirectoryCounter.l, Q_Folder.q, Q_Files.q, Q_Size.q, Q_SizeC.q, L_Timer.l, S_RessourcePath.s, S_SavePath.s

Structure Files
 Path.s
 Size.l
EndStructure
Global NewList File.Files()

Global WinFont.l = FontID(LoadFont(#PB_Any, "Tahoma", 8))

Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Procedure.s FormatByteSize(Size.q)
 If Size > 1073741824  ;GigaByte
  ProcedureReturn StrF(Size / 1073741824, 2) + " GB"
 ElseIf Size > 1048576 ;MegaByte
  ProcedureReturn StrF(Size / 1048576, 2) + " MB"
 ElseIf Size > 1024    ;KiloByte
  ProcedureReturn StrF(Size / 1044, 2) + " KB"
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

If OpenWindow(#Win_Backit, 0, 0, 602, 365, #PrgName, #PB_Window_SystemMenu|#PB_Window_MinimizeGadget|#PB_Window_Invisible|#PB_Window_ScreenCentered) <> 0
 If CreateMenu(#MenuBar_Backit, WindowID(#Win_Backit)) <> 0
  MenuTitle("Sicherung")
   MenuItem(#Mnu_Backit_Create, "Erstellen")
   MenuItem(#Mnu_Backit_Recovery, "Wiederherstellen")
   MenuBar()
   MenuItem(#Mnu_Backit_End, "Beenden")
  MenuTitle("Hilfe")
   MenuItem(#Mnu_Backit_Info, "Informationen")
 EndIf
 ;If CreateGadgetList(WindowID(#Win_Backit)) <> 0
  TextGadget(#G_TX_Backit_Information, 15, 10, 280, 13, "Informationen")
   SetGadgetFont(#G_TX_Backit_Information, WinFont)
  Frame3DGadget(#G_FR_Backit_Seperator, 10, 25, 250, 2, "", #PB_Frame3D_Single)
  TextGadget(#G_SR_Backit_FolderDesc, 15, 35, 100, 13, "Ordner:")
   SetGadgetFont(#G_SR_Backit_FolderDesc, WinFont)
  StringGadget(#G_SR_Backit_Folder, 125, 35, 450, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_Folder, WinFont)
  TextGadget(#G_SR_Backit_FilesDesc, 15, 55, 100, 13, "Dateien:")
   SetGadgetFont(#G_SR_Backit_FilesDesc, WinFont)
  StringGadget(#G_SR_Backit_Files, 125, 55, 450, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_Files, WinFont)
  TextGadget(#G_SR_Backit_SizeDesc, 15, 75, 100, 13, "Größe:")
   SetGadgetFont(#G_SR_Backit_SizeDesc, WinFont)
  StringGadget(#G_SR_Backit_Size, 125, 75, 450, 15, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_Size, WinFont)
  TextGadget(#G_SR_Backit_CurFolderDesc, 15, 100, 100, 15, "Akt. Ordner:")
   SetGadgetFont(#G_SR_Backit_CurFolderDesc, WinFont)
  StringGadget(#G_SR_Backit_CurFolder, 125, 100, 450, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_CurFolder, WinFont)
  TextGadget(#G_SR_Backit_CurFileDesc, 15, 120, 100, 13, "Akt. Datei:")
   SetGadgetFont(#G_SR_Backit_CurFileDesc, WinFont)
  StringGadget(#G_SR_Backit_CurFile, 125, 120, 450, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_CurFile, WinFont)
  TextGadget(#G_SR_Backit_CompresDesc, 15, 140, 105, 13, "Komprimierung:")
   SetGadgetFont(#G_SR_Backit_CompresDesc, WinFont)
  StringGadget(#G_SR_Backit_Compres, 125, 140, 450, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_Compres, WinFont)
  StringGadget(#G_SR_Backit_Progress, 15, 165, 515, 13, "", #PB_String_BorderLess|#PB_String_ReadOnly)
   SetGadgetFont(#G_SR_Backit_Progress, WinFont)
  TextGadget(#G_TX_Backit_Percent, 535, 165, 50, 13, "", #PB_Text_Right)
   SetGadgetFont(#G_TX_Backit_Percent, WinFont)
  ProgressBarGadget(#G_PB_Backit_Progress, 15, 180, 570, 15, 0, 100)
  ProgressBarGadget(#G_PB_Backit_File, 15, 200, 570, 10, 0, 10)
  ListViewGadget(#G_LV_Backit_Log, 15, 220, 570, 80)
   SetGadgetFont(#G_LV_Backit_Log, WinFont)
  ButtonGadget(#G_BN_Backit_Cancel, 510, 310, 75, 24, "Abbrechen")
   SetGadgetFont(#G_BN_Backit_Cancel, WinFont)
 ;EndIf
EndIf

Procedure CreateWindow(Window)
 If Window = #Win_Backit_Create
  If OpenWindow(#Win_Backit_Create, 0, 0, 350, 190, "Erstellen", #PB_Window_SystemMenu|#PB_Window_Invisible, WindowID(#Win_Backit))
   ;If CreateGadgetList(WindowID(#Win_Backit_Create))
    TextGadget(#G_TX_Backit_Create_Ressource, 5, 5, 180, 13, "Sicherung von")
     SetGadgetFont(#G_TX_Backit_Create_Ressource, WinFont)
    StringGadget(#G_SR_Backit_Create_Ressource, 5, 20, 300, 20, "", #PB_String_ReadOnly)
     SetGadgetFont(#G_SR_Backit_Create_Ressource, WinFont)
    ButtonGadget(#G_BN_Backit_Create_Ressource, 310, 20, 35, 20, "...")
     SetGadgetFont(#G_BN_Backit_Create_Ressource, WinFont)
    TextGadget(#G_TX_Backit_Create_Save, 5, 50, 280, 13, "Speicherort für Backup")
     SetGadgetFont(#G_TX_Backit_Create_Save, WinFont)
    StringGadget(#G_SR_Backit_Create_Save, 5, 65, 300, 20, "", #PB_String_ReadOnly)
     SetGadgetFont(#G_SR_Backit_Create_Save, WinFont)
    ButtonGadget(#G_BN_Backit_Create_Save, 310, 65, 35, 20, "...")
     SetGadgetFont(#G_BN_Backit_Create_Save, WinFont)
    TextGadget(#G_TX_Backit_Create_Compress, 5, 95, 250, 13, "Komprimierungsgrad")
     SetGadgetFont(#G_TX_Backit_Create_Compress, WinFont)
    ComboBoxGadget(#G_CB_Backit_Create_Compress, 5, 110, 250, 20)
     SetGadgetFont(#G_CB_Backit_Create_Compress, WinFont)
     For x = 0 To 9: AddGadgetItem(#G_CB_Backit_Create_Compress, -1, Str(x)): Next
    Frame3DGadget(#G_FR_Backit_Create_Seperator, -5, 150, 360, 2, "", #PB_Frame3D_Single)
    ButtonGadget(#G_BN_Backit_Create_Cancel, 190, 160, 75, 24, "Abbrechen")
     SetGadgetFont(#G_BN_Backit_Create_Cancel, WinFont)
    ButtonGadget(#G_BN_Backit_Create_Create, 270, 160, 75, 24, "Erstellen")
     SetGadgetFont(#G_BN_Backit_Create_Create, WinFont)
   ;EndIf
   B_CompresLevel = 5
   SetGadgetState(#G_CB_Backit_Create_Compress, B_CompresLevel)
   Window_CenterOnWindow(#Win_Backit_Create, #Win_Backit)
   DisableWindow(#Win_Backit, #True)
   HideWindow(#Win_Backit_Create, #False)
  EndIf
 EndIf
EndProcedure

Procedure RemoveWindow(Window)
 If Window = #Win_Backit_Create
  CloseWindow(#Win_Backit_Create)
  DisableWindow(#Win_Backit, #False)
 EndIf
EndProcedure

Procedure Create_ChangeRessourcePath()
 Protected Result.s
 Result = PathRequester("Ressource Pfad", GetGadgetText(#G_SR_Backit_Create_Ressource))
 If Result <> ""
  SetGadgetText(#G_SR_Backit_Create_Ressource, Result)
 EndIf
EndProcedure

Procedure Create_ChangeSavePath()
 Protected Result.s
 Result = SaveFileRequester("Speicher Pfad", GetHomeDirectory() + FormatDate("%dd-%mm-%yy_%hh-%ii-%ss", Date()) + ".pak", "Backup Archiv|*.pak|Alle Dateien|*.*", 0)
 If Result <> ""
  If SelectedFilePattern() = 0 And UCase(GetExtensionPart(Result)) <> "PAK"
   Result + ".pak"
  EndIf
 
  SetGadgetText(#G_SR_Backit_Create_Save, Result)
 EndIf
EndProcedure

Procedure WindowEventProgress()
 Repeat
  L_WindowEvent = WindowEvent()
  
  If L_WindowEvent = 0
   ProcedureReturn 0
  EndIf
  
  If L_WindowEvent = #PB_Event_Gadget And EventGadget() = #G_BN_Backit_Cancel Or #G_BN_Backit_Create_Cancel
   B_Cancel = 1
  EndIf
 ForEver
EndProcedure

Procedure PackCallback(SourcePosition, DestinationPosition)
 Protected Percent.l
 Static LPercent.l
  
 SetGadgetState(#G_PB_Backit_File, SourcePosition)
 
 If Q_SizeC > 0 And FileSize(S_SavePath) > 0
  SetGadgetText(#G_SR_Backit_Compres, FormatByteSize(FileSize(S_SavePath)) + "/" + FormatByteSize(Q_SizeC) + " - " + Str( 100 - ( (FileSize(S_SavePath) * 100) / Q_SizeC ) ) + "%")
 EndIf
 Percent = (Q_SizeC * 100) / Q_Size
 
 If LPercent <> Percent + 1
  LPercent = Percent + 1
  SetGadgetText(#G_TX_Backit_Percent, Str(Percent) + "%")
  SetGadgetState(#G_PB_Backit_Progress, Percent)
 EndIf
 
 WindowEventProgress()
 
 If B_Cancel = 1
  ProcedureReturn 0
 Else
  ProcedureReturn 1
 EndIf
EndProcedure

Procedure AddLog(Text$)
 AddGadgetItem(#G_LV_Backit_Log, -1, FormatDate("%hh:%ii:%ss", Date()) + ": " + Text$)
 SetGadgetState(#G_LV_Backit_Log, CountGadgetItems(#G_LV_Backit_Log) - 1)
EndProcedure

Procedure CreateBackup()
 Protected hTemp.l, hPack.l, TempPath.s, MemPoint.l, MemSize.l
 
 If ListSize(File()) > 0
  TempPath = GetPathPart(S_SavePath) + "bi_filelist_" + Str(Date()) + "_" + ".tmp"
  hTemp    = CreateFile(#PB_Any, TempPath)
      
  If CreatePack(S_SavePath) <> 0 And hTemp <> 0
   PackerCallback(@PackCallback())
   
   AddLog("Begin des Backup-Vorganges")
   
   WriteStringN(hTemp, "BI_100")
   
   SetGadgetText(#G_SR_Backit_CurFile, "")
   SetGadgetText(#G_SR_Backit_CurFolder, "")
   
   ForEach File()
    ;Abbrechen
    If B_Cancel = 1
     ClosePack()
     DeleteFile(S_SavePath)
     CloseFile(hTemp)
     DeleteFile(TempPath)
     
     AddLog("Abbruch durch Benutzer")
    
     SetGadgetText(#G_SR_Backit_Folder, "")
     SetGadgetText(#G_SR_Backit_Files, "")
     SetGadgetText(#G_SR_Backit_Size, "")
     SetGadgetText(#G_SR_Backit_CurFolder, "")
     SetGadgetText(#G_SR_Backit_CurFile, "")
     SetGadgetText(#G_SR_Backit_Compres, "")
     SetGadgetText(#G_SR_Backit_Progress, "")
     SetGadgetText(#G_TX_Backit_Percent, "")
     SetGadgetState(#G_PB_Backit_Progress, 0)
     SetGadgetState(#G_PB_Backit_File, 0)
     
     ProcedureReturn 0
    EndIf
    
    ;Datei hinzufügen
    If FileSize(File()\Path) = -1
     AddLog("Fehlende Datei: " + File()\Path)
     Q_Size - File()\Size
    Else
     SetGadgetAttribute(#G_PB_Backit_File, #PB_ProgressBar_Maximum, File()\Size)
     
     SetGadgetText(#G_SR_Backit_CurFolder, GetPathPart(File()\Path))
     SetGadgetText(#G_SR_Backit_CurFile, GetFilePart(File()\Path))
     
     If AddPackFile(File()\Path, B_CompresLevel) = 0
      AddLog("Datei konnte nicht hinzugefügt werden " + "'" + GetFilePart(File()\Path) + "'")
      Q_Size - File()\Size
     Else
      WriteStringN(hTemp, Right(File()\Path, Len(File()\Path) - Len(S_RessourcePath)))
      Q_SizeC + File()\Size
     EndIf
    EndIf
   Next
   
   ClosePack()
   
   ;Informationen und Header hinzufügen
   WriteQuad(hTemp, MemSize)
   FlushFileBuffers(hTemp)
   
   MemSize = FileSize(TempPath): Debug MemSize
   
   FileSeek(hTemp, 0)
   MemPoint = AllocateMemory(MemSize)
   ReadData(hTemp, MemPoint, MemSize)
   
   CloseFile(hTemp)
   DeleteFile(TempPath)
   
   hPack = OpenFile(#PB_Any, S_SavePath)
   If hPack <> 0
    FileSeek(hPack, Lof(hPack))
    WriteData(hPack, MemPoint, MemSize)
    CloseFile(hPack)
    FreeMemory(MemPoint)
   Else
    AddLog("Fehler beim schreiben des Header.")
   
    ClosePack()
    DeleteFile(S_SavePath)
   
    CloseFile(hTemp)
    DeleteFile(TempPath)
    
    SetGadgetText(#G_SR_Backit_Folder, "")
    SetGadgetText(#G_SR_Backit_Files, "")
    SetGadgetText(#G_SR_Backit_Size, "")
    SetGadgetText(#G_SR_Backit_CurFolder, "")
    SetGadgetText(#G_SR_Backit_CurFile, "")
    SetGadgetText(#G_SR_Backit_Compres, "")
    SetGadgetText(#G_SR_Backit_Progress, "")
    SetGadgetText(#G_TX_Backit_Percent, "")
    SetGadgetState(#G_PB_Backit_Progress, 0)
    SetGadgetState(#G_PB_Backit_File, 0)   
   
    ProcedureReturn 0
   EndIf
      
   SetGadgetText(#G_SR_Backit_CurFolder, "")
   SetGadgetText(#G_SR_Backit_CurFile, "")
   SetGadgetText(#G_SR_Backit_Progress, "")
   SetGadgetText(#G_TX_Backit_Percent, "")
   SetGadgetState(#G_PB_Backit_Progress, 0)
   SetGadgetState(#G_PB_Backit_File, 0)
     
   AddLog("Backup erfolgreich fertiggestellt")
  
  Else
   AddLog("Fehler beim erstellen des Backup-Archives.")
  EndIf
 EndIf
EndProcedure

Procedure InitDirectory(Path$, Reset = 0)
 Protected hDir.l

 hDir = ExamineDirectory(#PB_Any, Path$, "*.*")
 If hDir <> 0
  L_DirectoryCounter + 1
  
  If Reset = 1
   B_Cancel = 0
   Q_Size   = 0
   Q_SizeC  = 0
   Q_Files  = 0
   Q_Folder = 0
   L_Timer  = timeGetTime_()
   ClearList(File())
   ClearGadgetItems(#G_LV_Backit_Log)
   
   SetGadgetText(#G_SR_Backit_Folder, "")
   SetGadgetText(#G_SR_Backit_Files, "")
   SetGadgetText(#G_SR_Backit_Size, "")
   SetGadgetText(#G_SR_Backit_CurFolder, "")
   SetGadgetText(#G_SR_Backit_CurFile, "")
   SetGadgetText(#G_SR_Backit_Compres, "")   
   
   AddLog("Start der Backup-Initialisierung")
  EndIf
  
  While NextDirectoryEntry(hDir)
   If B_Cancel = 1
    FinishDirectory(hDir)
    Break
   EndIf
   
   If DirectoryEntryType(hDir) = #PB_DirectoryEntry_Directory
    If DirectoryEntryName(hDir) <> ".." And DirectoryEntryName(hDir) <> "."
     Q_Folder + 1: SetGadgetText(#G_SR_Backit_Folder, Str(Q_Folder))
     
     If Right(Path$, 1) <> "\": Path$ + "\": EndIf
     SetGadgetText(#G_SR_Backit_CurFolder, Path$ + DirectoryEntryName(hDir))
     InitDirectory(Path$ + DirectoryEntryName(hDir), 0)
    EndIf
   EndIf
   
   If DirectoryEntryType(hDir) = #PB_DirectoryEntry_File
    Q_Files + 1: SetGadgetText(#G_SR_Backit_Files, Str(Q_Files))
    
    Q_Size + DirectoryEntrySize(hDir): SetGadgetText(#G_SR_Backit_Size, FormatByteSize(Q_Size))
    
    SetGadgetText(#G_SR_Backit_CurFile, DirectoryEntryName(hDir))
    
    AddElement(File())
    If Right(Path$, 1) <> "\": Path$ + "\": EndIf
    File()\Path = Path$ + DirectoryEntryName(hDir)
    File()\Size = DirectoryEntrySize(hDir)
   EndIf
   
   WindowEventProgress()
  Wend
  
  FinishDirectory(hDir)
  
  L_DirectoryCounter - 1
  
  If L_DirectoryCounter <= 0
   
   If ListSize(File()) > 0 And B_Cancel = 0
    SortStructuredList(File(), 2, OffsetOf(Files\Path), #PB_Sort_String)
    
    AddLog("Backup-Initialisierung erfolgreich fertiggestellt")
    CreateBackup()
   Else
    AddLog("Abbruch durch Benutzer")
    
    SetGadgetText(#G_SR_Backit_Folder, "")
    SetGadgetText(#G_SR_Backit_Files, "")
    SetGadgetText(#G_SR_Backit_Size, "")
    SetGadgetText(#G_SR_Backit_CurFolder, "")
    SetGadgetText(#G_SR_Backit_CurFile, "")
    
    ProcedureReturn 0
   EndIf
  
  EndIf
  
 Else
  AddLog("Ungültiges Verzeichnis: " + "'" + Path$ + "'")
 EndIf
EndProcedure

Procedure StartBackup()
 If GetGadgetText(#G_SR_Backit_Create_Ressource) = "" Or FileSize(GetGadgetText(#G_SR_Backit_Create_Ressource)) <> -2
  MsgBox_Error("Ungültiger Ressource Pfad" + #CRLF$ + "Ressource Pfad muss eine gültige Verzeichnisangabe sein.")
  ProcedureReturn 0
 EndIf
 If GetGadgetText(#G_SR_Backit_Create_Save) = ""
  MsgBox_Error("Ungültiger Speicher Pfad" + #CRLF$ + "Speicher Pfad muss eine gültige Verzeichnisangabe sein.")
  ProcedureReturn 0
 EndIf
 
 S_RessourcePath  = GetGadgetText(#G_SR_Backit_Create_Ressource)
 S_SavePath       = GetGadgetText(#G_SR_Backit_Create_Save)
 B_CompresLevel   = GetGadgetState(#G_CB_Backit_Create_Compress)
 
 RemoveWindow(#Win_Backit_Create)
 
 InitDirectory(S_RessourcePath, #True)
EndProcedure

HideWindow(#Win_Backit, #False)
Repeat
 L_WindowEvent = WaitWindowEvent()
 L_EventWindow = EventWindow()
 l_EventMenu   = EventMenu()
 L_EventGadget = EventGadget()
 
 If L_WindowEvent = #PB_Event_Menu
  Select L_EventMenu
   Case #Mnu_Backit_Create
    CreateWindow(#Win_Backit_Create)
   Case #Mnu_Backit_End
    End
  EndSelect
 EndIf
 
 If L_WindowEvent = #PB_Event_Gadget
  If L_EventWindow = #Win_Backit_Create
   Select L_EventGadget
    Case #G_BN_Backit_Create_Ressource
     Create_ChangeRessourcePath()
    Case #G_BN_Backit_Create_Save
     Create_ChangeSavePath()
    Case #G_CB_Backit_Create_Compress
     B_CompresLevel = GetGadgetState(#G_CB_Backit_Create_Compress)
    Case #G_BN_Backit_Create_Create
     StartBackup()
    Case #G_BN_Backit_Create_Cancel
     RemoveWindow(#Win_Backit_Create)
   EndSelect
  EndIf
 EndIf
  
 If L_WindowEvent = #PB_Event_CloseWindow
  Select L_EventWindow
   Case #Win_Backit
    End
   Case #Win_Backit_Create
    RemoveWindow(#Win_Backit_Create)
  EndSelect
 EndIf
ForEver
; IDE Options = PureBasic 4.50 Beta 3 (Windows - x86)
; CursorPosition = 443
; FirstLine = 426
; Folding = f9--
; EnableXP
; Executable = E:\BackIt.exe
; CPU = 1
; CompileSourceDirectory
; EnableCompileCount = 5
; EnableBuildCount = 0
; EnableExeConstant