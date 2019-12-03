EnableExplicit

Procedure.s ExePath()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetPathPart(Path$)
EndProcedure

Macro MsgBox_Error(Text, Title = "Fehler")
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Define x.l

Structure ress
 dname.s
 fname.s
 type.b
EndStructure
Global NewList Ressource.ress()

Procedure Ressource_Add(Name$, Type, Path$)
 AddElement(Ressource())
 Ressource()\dname = Name$
 Ressource()\fname = Path$
 Ressource()\type  = Type
EndProcedure

Ressource_Add("Main",          #IMAGE_ICON, ExePath() + "Main.ico")
Ressource_Add("Accept",        #IMAGE_ICON, ExePath() + "Accept.ico")
Ressource_Add("Cancel",        #IMAGE_ICON, ExePath() + "Cancel.ico")
Ressource_Add("AppAdd",        #IMAGE_ICON, ExePath() + "AppAdd.ico")
Ressource_Add("AppDel",        #IMAGE_ICON, ExePath() + "AppDel.ico")
Ressource_Add("AppDef",        #IMAGE_ICON, ExePath() + "AppDef.ico")
Ressource_Add("AppUp",         #IMAGE_ICON, ExePath() + "AppUp.ico")
Ressource_Add("AppDown",       #IMAGE_ICON, ExePath() + "AppDown.ico")
Ressource_Add("AppSort",       #IMAGE_ICON, ExePath() + "AppSort.ico")
Ressource_Add("Warning",       #IMAGE_ICON, ExePath() + "Warning.ico")
Ressource_Add("Programs",      #IMAGE_ICON, ExePath() + "Programs.ico")
Ressource_Add("Starting",      #IMAGE_ICON, ExePath() + "Starting.ico")
Ressource_Add("Interface",     #IMAGE_ICON, ExePath() + "Interface.ico")
Ressource_Add("Skin",          #IMAGE_ICON, ExePath() + "Skin.ico")
Ressource_Add("Programmenu",   #IMAGE_ICON, ExePath() + "Programmenu.ico")
Ressource_Add("Fonts",         #IMAGE_ICON, ExePath() + "Fonts.ico")
Ressource_Add("Shortcuts",     #IMAGE_ICON, ExePath() + "Shortcuts.ico")
Ressource_Add("Folder",        #IMAGE_ICON, ExePath() + "Folder.ico")
Ressource_Add("Security",      #IMAGE_ICON, ExePath() + "Security.ico")
Ressource_Add("load_01",       #IMAGE_ICON, ExePath() + "load_01.ico")
Ressource_Add("load_02",       #IMAGE_ICON, ExePath() + "load_02.ico")
Ressource_Add("Update",        #IMAGE_ICON, ExePath() + "Update.ico")
Ressource_Add("SkinCreator",   #IMAGE_ICON, ExePath() + "SkinCreator.ico")
Ressource_Add("Autorun",       #IMAGE_ICON, ExePath() + "Autorun.ico")
Ressource_Add("Autor",         #IMAGE_BITMAP, ExePath() + "Autor.bmp")
Ressource_Add("Error",         #IMAGE_BITMAP, ExePath() + "Error.bmp")
For x = 1 To 30
 Ressource_Add("Logo_" + Str(x), #IMAGE_BITMAP, ExePath() + "Logo\" + "Logo_" + Str(x) + ".bmp")
Next

Procedure PrintEx(Text$, CRLF = 1, TxtClr = 7, BckClr = 0)
 ConsoleColor(TxtClr, BckClr)
 If CRLF = 1: Text$ + #CRLF$: EndIf
 Print(Text$)
EndProcedure

If OpenConsole() <> 0
 ConsoleTitle("Create Ressource 1.00 - Launcher")
 
 PrintEx("Create Ressource 1.00 - Launcher", 1, 15)
 PrintEx("Copyright©PureSoft, 2007" + #CRLF$, 1, 15)
 
 PrintEx("Erstelle Datei Ressource.rc..", 0)
 
 Define hFile.l = CreateFile(#PB_Any, ExePath() + "Ressource.rc")
 If hFile <> 0
  PrintEx(" OK" + #CRLF$, 1, 10)
 
  ;define
  ForEach Ressource()
   WriteStringN(hFile, "#define " + Ressource()\dname + " " + Str(ListIndex(Ressource()) + 1))
   PrintEx("Schreibe define " + Ressource()\dname + "..")
  Next
  
  PrintEx("", 1)
  
  Define type.s
  ;files
  ForEach Ressource()
   Select Ressource()\type
    Case #IMAGE_BITMAP: type = "BITMAP"
    Case #IMAGE_ICON:   type = "ICON"
   EndSelect
   WriteStringN(hFile, Ressource()\dname + " " + type + " " + Chr(34) + Ressource()\fname + Chr(34))
   PrintEx("Schreibe Include " + GetFilePart(Ressource()\fname), 1)
  Next

  ;save..
  CloseFile(hFile)
  
  PrintEx("", 1)
  
  If FileSize(ExePath() + "Ressource.rc") > 0
   PrintEx("Ressource.rc erfolgreich erstellt")
  Else
   PrintEx("Ressource.rc konnte nicht erstellt werden.")
  EndIf
  
  Inkey()
 Else
  PrintEx(" Fehlgeschlagen", 0, 4)
 EndIf

 Input()

 CloseConsole()
Else
 MsgBox_Error("Es konnte keine Console geöffnet werden.")
EndIf
; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 49
; Folding = g
; Executable = ..\Ressource\CreateRessource.exe
; CPU = 1