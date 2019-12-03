EnableExplicit: Define.l

Enumeration ;- Const Windows
 #Win_Hide
 #Win_Main
 #Win_Preferences
 #Win_Information
 #Win_Update
 #Win_SkinCreator
 #Win_Autostart
 #Win_Error
EndEnumeration

Enumeration ;- Const Gadgets
 ;Main
 #G_IG_Main_Drive
 #G_IG_Main_OwnFiles
 #G_IG_Main_Documents
 #G_IG_Main_Music
 #G_IG_Main_Pictures
 #G_IG_Main_Movies
 #G_IG_Main_Search
 #G_IG_Main_Preferences
 #G_IG_Main_Misc
 #G_IG_Main_End
 #G_IG_Main_Percent
 #G_IG_Main_MnuStart
 #G_IG_Main_MnuEnd = #G_IG_Main_MnuStart + 20
 ;Preferences Main
 #G_TR_Preferences_Categorie
 #G_FR_Preferences_Gap
 #G_BI_Preferences_Cancel
 #G_BI_Preferences_Apply
 #G_TX_Preferences_FastHelp
 ;Preferences Programms
 #G_TR_Preferences_Programs_List
 #G_BI_Preferences_Programs_Up
 #G_BI_Preferences_Programs_Down
 #G_BI_Preferences_Programs_Sort
 #G_BI_Preferences_Programs_Add
 #G_BI_Preferences_Programs_Del
 #G_BI_Preferences_Programs_Warning
 #G_TX_Preferences_Programs_Name
 #G_SR_Preferences_Programs_Name
 #G_TX_Preferences_Programs_Path
 #G_SR_Preferences_Programs_Path
 #G_BN_Preferences_Programs_Path
 #G_TX_Preferences_Programs_Parameter
 #G_SR_Preferences_Programs_Parameter
 #G_TX_Preferences_Programs_Icon
 #G_SR_Preferences_Programs_Icon
 #G_BN_Preferences_Programs_Icon
 #G_TX_Preferences_Programs_WorkPath
 #G_SR_Preferences_Programs_WorkPath
 #G_BN_Preferences_Programs_WorkPath
 #G_TX_Preferences_Programs_StartType
 #G_CB_Preferences_Programs_StartType
 #G_CB_Preferences_Programs_AutoStart
 ;Preferences Starting
 #G_CH_Preferences_Starting_ShowAtStart
 #G_CH_Preferences_Starting_CheckVersion
 #G_CH_Preferences_Starting_OSTest
 #G_CH_Preferences_Starting_CheckApps
 #G_CH_Preferences_Starting_SafetycopyPrefs
 #G_CH_Preferences_Starting_SafetycopyType1
 #G_CH_Preferences_Starting_SafetycopyType2
 #G_CH_Preferences_Starting_SafetycopyType3
 #G_FR_Preferences_Starting_Wallpaper
 #G_CH_Preferences_Starting_WallpaperChange
 #G_SR_Preferences_Starting_Wallpaper
 #G_BN_Preferences_Starting_Wallpaper
 ;Preferences Interface
 #G_TX_Preferences_Interface_Language
 #G_CB_Preferences_Interface_Language
 #G_TX_Preferences_Interface_Position
 #G_CB_Preferences_Interface_Position
 #G_TX_Preferences_Interface_Distance
 #G_TB_Preferences_Interface_Distance
 #G_TX_Preferences_Interface_DistanceAmount
 #G_CH_Preferences_Interface_Fading
 #G_CH_Preferences_Interface_AlwaysOnTop
 #G_TX_Preferences_Interface_SystrayIcon
 #G_TB_Preferences_Interface_SystrayIcon
 #G_IG_Preferences_Interface_SystrayIcon
 #G_CH_Preferences_Interface_SkinSystrayIcon
 #G_FR_Preferences_Interface_Space
 #G_CN_Preferences_Interface_ShowSpace
 #G_OP_Preferences_Interface_ShwFreeSpace
 #G_OP_Preferences_Interface_ShwUsedSpace 
 #G_CN_Preferences_Interface_SpaceTyp
 #G_OP_Preferences_Interface_ShwPercent
 #G_OP_Preferences_Interface_ShwSpace
 ;Preferences Programsmenu
 #G_FR_Preferences_Menu_TAdjust
 #G_OP_Preferences_Menu_TAdjustLeft
 #G_OP_Preferences_Menu_TAdjustCenter
 #G_OP_Preferences_Menu_TAdjustRight
 #G_TX_Preferences_Menu_DistanceBorder
 #G_TB_Preferences_Menu_DistanceBorder
 #G_TX_Preferences_Menu_DistanceIcnTxt
 #G_TB_Preferences_Menu_DistanceIcnTxt
 #G_CH_Preferences_Menu_ShwIcons
 ;Preferences Skin
 #G_TX_Preferences_Skin_List
 #G_CB_Preferences_Skin_List
 #G_TX_Preferences_Skin_Name
 #G_SR_Preferences_Skin_Name
 #G_TX_Preferences_Skin_Version
 #G_SR_Preferences_Skin_Version
 #G_TX_Preferences_Skin_Autor
 #G_SR_Preferences_Skin_Autor
 #G_TX_Preferences_Skin_Homepage
 #G_SR_Preferences_Skin_Homepage
 #G_TX_Preferences_Skin_Preview
 #G_IG_Preferences_Skin_Preview
 ;Preferences Fonts
 #G_TX_Preferences_Fonts_Title
 #G_LI_Preferences_Fonts_List
 ;Preferences Shortcuts
 #G_TX_Preferences_Shortcuts_Title
 #G_LI_Preferences_Shortcuts_List
 #G_FR_Preferences_Shortcuts_Gap
 #G_CH_Preferences_Shortcuts_Strg
 #G_CH_Preferences_Shortcuts_Alt
 #G_CH_Preferences_Shortcuts_Shift
 #G_CB_Preferences_Shortcuts_Hotkey
 ;Preferences Folder
 #G_TX_Preferences_Folder_OwnFiles
 #G_SR_Preferences_Folder_FolderOwnFiles
 #G_BN_Preferences_Folder_OwnFilesChangeFolder
 #G_CH_Preferences_Folder_MaximizeOwnFiles
 #G_TX_Preferences_Folder_OwnFilesFolderName
 #G_LI_Preferences_Folder_OwnFilesFolderName
 #G_TX_Preferences_Folder_BrowserStartPage
 #G_SR_Preferences_Folder_BrowserStartPage
 #G_CH_Preferences_Folder_BrowserStartPage
 ;Informations
 #G_CT_Information_Logo
 #G_IG_Information_Logo
 #G_SA_Information_Data
 #G_IG_Information_Autor
 #G_TX_Information_AutorName
 #G_TX_Information_AutorMail
 #G_TX_Information_AutorPage
 #G_SR_Information_MiscInfos
 #G_BI_Information_Accept
 ;Update
 #G_IG_Update_Logo
 #G_FR_Update_Version
 #G_TX_Update_Version_Use
 #G_TX_Update_Version_UseV
 #G_TX_Update_Version_Newest
 #G_TX_Update_Version_NewestV
 #G_LV_Update_Log
 #G_BN_Update_Manuel
 #G_BN_Update_Start
 ;SkinCreator
 #G_IG_SkinCreator_Logo
 #G_TX_SkinCreator_ResPath
 #G_SR_SkinCreator_ResPath
 #G_BN_SkinCreator_ResPath
 #G_TX_SkinCreator_SkinPath
 #G_SR_SkinCreator_SkinPath
 #G_BN_SkinCreator_SkinPath
 #G_LI_SkinCreator_Preferences
 #G_CH_SkinCreator_ShwLog
 #G_BN_SkinCreator_Cancel
 #G_BN_SkinCreator_Create
 #G_LV_SkinCreator_Log
 ;Autorun
 #G_IG_Autorun_Logo
 #G_TX_Autorun_Description
 #G_TX_Autorun_DriveName
 #G_SR_Autorun_DriveName
 #G_TX_Autorun_DriveIcon
 #G_SR_Autorun_DriveIcon
 #G_BN_Autorun_DriveIcon
 #G_CH_Autorun_DoubleClick
 #G_CH_Autorun_KontextEntry
 #G_SR_Autorun_Preview
 #G_BN_Autorun_Remove
 #G_BN_Autorun_Copy
 #G_BI_Autorun_Cancel
 #G_BI_Autorun_Apply
 ;Error
 #G_IG_Error_Logo
 #G_SR_Error_Message
 #G_FR_Error_Gap 
 #G_BN_Error_Ignore
 #G_BN_Error_Copy
 #G_BN_Error_End
EndEnumeration

Enumeration ;- Const Menu
 #Menu_PopUp_Search
 #Menu_PopUp_Misc
 #Menu_PopUp_Programs
 #Menu_PopUp_SysTray
 #Menu_PopUp_Fonts
 #Menu_PopUp_OwnFiles
EndEnumeration

Enumeration ;- Const Menuitems
 #Mnu_SearchComputer
 #Mnu_SearchFolder
 #Mnu_SearchOwnFiles
 #Mnu_SearchDrive
 #Mnu_SearchINET
 #Mnu_PrgStartNormal
 #Mnu_PrgStartMaximize
 #Mnu_PrgStartMinimize
 #Mnu_PrgPath
 #Mnu_PrgPreferences
 #Mnu_PrgScrollUp
 #Mnu_PrgScrollDown 
 #Mnu_MiscWebsite
 #Mnu_MiscHelp
 #Mnu_MiscUpdate
 #Mnu_MiscSkinCreator
 #Mnu_MiscAutorunCreator
 #Mnu_MiscInformation
 #Mnu_SysTrayShow
 #Mnu_SysTrayPreferences
 #Mnu_SysTrayUpdate
 #Mnu_SysTrayAbout
 #Mnu_SysTrayEnd
 #Mnu_FontsFont
 #Mnu_FontsColor
 #Mnu_OwnFilesStart
 ;Shortcuts
 #Mnu_Escape_Main
 #Mnu_Escape_Preferences
 #Mnu_Escape_Information
 #Mnu_Escape_Update
 #Mnu_Escape_SkinCreator
 #Mnu_Escape_AutoStart
 #Mnu_Escape_Error
EndEnumeration

Enumeration ;- Const Images
 #Img_Preview
 #Icn_SysTray
 #Img_Background
 #Img_Menu
 #Img_Drive
 #Img_Drive_Over
 #Img_OwnFiles
 #Img_OwnFiles_Over
 #Img_Documents
 #Img_Documents_Over
 #Img_Music
 #Img_Music_Over
 #Img_Pictures
 #Img_Pictures_Over
 #Img_Movies
 #Img_Movies_Over
 #Img_Search
 #Img_Search_Over
 #Img_Preferences
 #Img_Preferences_Over
 #Img_Misc
 #Img_Misc_Over
 #Img_End
 #Img_EndOver
 #Img_PercentBack
 #Img_PercentBar
 #Img_PercentDraw
 #Img_Menu_Start
 #Img_Menu_End = #Img_Menu_Start + 39
 #Img_TempButton
EndEnumeration

Enumeration 1 ;- Const Timer
 #Timer_InfoLogo
EndEnumeration

;- Const Misc
;Global
#PrgName           = "Launcher"
#PrgVers           = 109
#PrgLizens         = "Dieses Programm ist Freeware und darf kostenlos genutzt werden." + #CRLF$ + "Sowohl für Privaten als auch Kommerziellen Zwecken." + #CRLF$ + "Der Autor übernimmt keine Haftung für Schäden," + #CRLF$ + "die trotz sorgfältiger Programmierung," + #CRLF$ + "durch dieser Software an ihrem System entstehen könnten," + #CRLF$ + "sowie keine Garantie auf Funktionalität." + #CRLF$ + #CRLF$ + "Falls es einen Weg geben sollte," + #CRLF$ + "über dieser Software Gesetzeswidrige Handlungen durchzuführen," + #CRLF$ + "so übernimmt der Autor keine Haftung dafür." + #CRLF$ + #CRLF$ + "Das verteilen von diesem Programm ist erlaubt und sogar erwünscht," + #CRLF$ + "solange die Nutzung und der Download kostenlos bleiben." + #CRLF$ + "Alle Rechte bleiben dem Autor vorbehalten." + #CRLF$ + #CRLF$ + "Launcher darf nicht dekompiliert, disassembliert oder anderweitig" + #CRLF$ + "aus der Maschinencode Form in ein für den Menschen lesbaren" + #CRLF$ + "Format zurückverwandelt oder mit Editoren geöffnet und verändert werden." + #CRLF$ + "Sämtliche Veränderungen an der Software oder Teilen davon sind ohne " + #CRLF$ + "ausdrückliche Genehmigung strengstens untersagt und werden" + #CRLF$ + "bei Nichteinhalten rechtlich bestraft." + #CRLF$ + #CRLF$ + "Stimmen Sie diesen Bedingungen zu?"
#PrgInformation    = "Launcher dient als Startmenü für einen Wechseldatenträger" + #CRLF$ + #CRLF$ + "Vielen Dank an folgende Personen:" + #CRLF$ + #CRLF$ + "- Andreas König -" + #CRLF$ + "Für seine Teilnahme am Projekt und den" + #CRLF$ + "vielen, hilfreichen Tipps sowie der Unterstützung." + #CRLF$ + #CRLF$ + "- Paddey -" + #CRLF$ + "Für das testen auf Fehlern." + #CRLF$ + #CRLF$ + "- trabajador -" + #CRLF$ + "- D@ante -" + #CRLF$ + "- Thorsten1867 -" + #CRLF$ + "Für Verbesserungsvorschläge" + #CRLF$ + "sowie Fehlerbericht" + #CRLF$ + #CRLF$ + "- PureBoard Community -" + #CRLF$ + "Für den Suport im Forum." + #CRLF$ + #CRLF$ + "- PureBasic Team -" + #CRLF$ + "Für diese geniale Programmiersprache." + #CRLF$ + #CRLF$ + "Und natürlich jedem der das gerade liest :)"
#FadingTime        = 10
#CWP_SKIPINVISIBLE = 1
;Skin
#S_TestSkin        = "F_SK"
#Len_Name          = 30
#Len_Autor         = 30
#Len_Version       = 3
#Len_Homepage      = 50
#Len_Colors        = 8
;Folder and Filesystem
#S_Folder          = "Launcher\"
#S_FolderSkin      = "Skin\"
#S_FolderLanguage  = "Language\"
#S_FilePref        = "Launcher.cfg"
#S_FilePrefBckup   = "Launcher.bak"
#S_FileHelp        = "Launcher.chm"
#S_FileSysTrayLib  = "Launcher.bmp"
#S_URLVersion      = "http://www.kaisnet.de/data/version/launcher.inf"
#S_URLProjekt      = "http://www.kaisnet.de/"
;About
#S_AutorName       = "Kai Gartenschläger"
#S_AutorMail       = "angel-kai@hotmail.de"
#S_AutorPage       = "http://www.kaisnet.de/"
;Defaults
#S_DefSkin         = "Blue Dream.skn"
#S_DefNewSkin      = "Neuer Skin.skn"
#S_DefLanguage     = "Deutsch.lng"
#S_DefStartPage    = "http://www.google.de"
#S_DefAppName      = "Neues Programm"
#S_DefAppPara      = ""
#S_DefAppIcon      = ""
#B_DefAppStartT    = 0
#B_DefAppAutoS     = 0
#S_DefDriveName    = "Portable Drive"
#S_DefOwnFiles     = "Eigene Dateien\"
#S_DefDocuments    = "Dokumente"
#S_DefMusic        = "Musik"
#S_DefPictures     = "Grafiken"
#S_DefMovies       = "Videos"
;Opacity Window
#L_LayerColor      = $FF80FF

;- Variablen
;Misc
Global B_FirstStart.b
Global L_hSemaphore.l
Global L_BackroundBrush.l
Global B_FadingBool.l
Global L_ScrollMenu.l
Global B_OnError.b
Global S_AppErrorMsg.s
Global L_OwnFilesMenuCounter.l
Global B_ShwSkinCLog.b
Global B_CancelCreateSkin.b
Global B_ShortcutFlag.B
Global B_ShortcutLast.B
Define L_ActivePrg.l
Define L_FastHelpGadget.l
Define L_LFastHelpGadget.l
Define L_Next.l
Define x.l
;Preferences, Starting
Global B_ShowAtStart.b
Global B_VersionCheck.b
Global B_MsgOSTest.b
Global B_ShowAppErrors.b
Global S_LastSavetycopyPrefs.s
Global B_SafetycopyPrefs.b
Global B_SafetycopyType.b
Global B_ChangeWallpaper.b
Global S_Wallpaper.s
Global S_WallpaperOld.s
;Preferences, Interface
Global S_Language.s
Global B_WindowPosition.b
Global B_Gap.b
Global B_Fading.b
Global B_AlwaysOnTop.b
Global B_ShowSpace.b
Global B_ShowSpaceType.b
Global B_SkinSysTrayIcon.b
Global B_SysTrayIcon.b
;Preferences, Skin
Global S_Skin.s
;Preferences, Programsmenu
Global B_ShwIcons.b
Global B_AdjustMnu.b
Global B_DistBorder.b
Global B_DistIcnTxt.b
;Preferences, Shortcuts
;Preferences, Folder
Global S_OwnFiles.s
Global S_Documents.s
Global S_Music.s
Global S_Pictures.s
Global S_Movies.s
Global B_MaximizeDocs.b
Global S_StartPage.s
Global B_MaximizeStartPage.b
;Windowevents
Global L_WindowEvent.l
Global L_EventWindow.l
Global L_EventGadget.l
Global L_EventMenu.l
Global L_EventType.l
Global L_EventwParam.l
Global L_EventlParam.l
Global L_ActiveWin.l
Global L_ActiveGadget.l
Global L_WinMouseX.l
Global L_WinMouseY.l

;- Structuren
Global P.POINT

Structure App
 Name.s
 Path.s
 Para.s
 Work.s
 Icon.s
 IcnID.l
 StartT.b
 AutoS.b
EndStructure
Global NewList Application.App()

Structure MnuImg
 Normal.l
 Over.l
EndStructure
Global Dim MnuImage.MnuImg(19)

#DIM_Fonts = 3
Structure Fonts
 hFnt.l
 Name.s
 Size.l
 Style.l
 Color.l
EndStructure
Global Dim Font.Fonts(#DIM_Fonts)

#DIM_KeyCode = 78
Structure Key
 Name.s
 Code.l
EndStructure
Global Dim KeyCode.Key(#DIM_KeyCode)
Restore KeyName: For x = 0 To #DIM_KeyCode: Read.s KeyCode(x)\Name: Next
Restore KeyCode: For x = 0 To #DIM_KeyCode: Read.s KeyCode(x)\Code: Next

#DIM_Shortcut = 5
Structure Shortcut
 active.b
 control.b
 menu.b
 shift.b
 misc.b
EndStructure
Global Dim Shortcut.Shortcut(#DIM_Shortcut)

#DIM_Language = 265
Structure Language
 Name.s
 Wert.s
EndStructure
Global Dim Language.Language(#DIM_Language)

Restore Language
For x = 0 To #DIM_Language
 Read.s Language(x)\Name
 Read.s Language(x)\Wert
Next

#DIM_Logo = 29
Global Dim ImgLogo.l(#DIM_Logo)

#DIM_SknFl = 64
Structure SknFL
 Path.s
 ImgW.l
 ImgH.l
EndStructure
Global Dim SknFL.SknFL(#DIM_SknFl)

Global NewList hSysTrayIcn.l()

Structure ToolTip
 GadgetID.l
 ToolTip.s
EndStructure
Global NewList ToolTip.ToolTip()

Restore SknFile: For x = 0 To #DIM_SknFl: Read.s SknFL(x)\Path: Next
Restore SknW:    For x = 0 To #DIM_SknFl: Read.i SknFL(x)\ImgW: Next
Restore SknH:    For x = 0 To #DIM_SknFl: Read.i SknFL(x)\ImgH: Next

Global lInitNetwork.l = InitNetwork()

;- Ressources
Declare LoadRessource(hRes$, Typ, Width, Height)
Global Icn_Main.l         = LoadRessource("#1", #IMAGE_ICON, 48, 48)
Global Icn_Accept.l       = LoadRessource("#2", #IMAGE_ICON, 16, 16)
Global Icn_Cancel.l       = LoadRessource("#3", #IMAGE_ICON, 16, 16)
Global Icn_AppAdd.l       = LoadRessource("#4", #IMAGE_ICON, 16, 16)
Global Icn_AppDel.l       = LoadRessource("#5", #IMAGE_ICON, 16, 16)
Global Icn_AppDef.l       = LoadRessource("#6", #IMAGE_ICON, 16, 16)
Global Icn_AppUp.l        = LoadRessource("#7", #IMAGE_ICON, 16, 16)
Global Icn_AppDown.l      = LoadRessource("#8", #IMAGE_ICON, 16, 16)
Global Icn_AppSort.l      = LoadRessource("#9", #IMAGE_ICON, 16, 16)
Global Icn_Warning.l      = LoadRessource("#10", #IMAGE_ICON, 16, 16)
Global Icn_Programs.l     = LoadRessource("#11", #IMAGE_ICON, 16, 16)
Global Icn_Starting.l     = LoadRessource("#12", #IMAGE_ICON, 16, 16)
Global Icn_Interface.l    = LoadRessource("#13", #IMAGE_ICON, 16, 16)
Global Icn_Skin.l         = LoadRessource("#14", #IMAGE_ICON, 16, 16)
Global Icn_Programmenu.l  = LoadRessource("#15", #IMAGE_ICON, 16, 16)
Global Icn_Fonts.l        = LoadRessource("#16", #IMAGE_ICON, 16, 16)
Global Icn_Shortcuts.l    = LoadRessource("#17", #IMAGE_ICON, 16, 16)
Global Icn_Folder.l       = LoadRessource("#18", #IMAGE_ICON, 16, 16)
Global Icn_Security.l     = LoadRessource("#19", #IMAGE_ICON, 16, 16)
Global Icn_Load1.l        = LoadRessource("#20", #IMAGE_ICON, 16, 16)
Global Icn_Load2.l        = LoadRessource("#21", #IMAGE_ICON, 16, 16)
Global Icn_Update.l       = LoadRessource("#22", #IMAGE_ICON, 48, 48)
Global Icn_SkinCreator.l  = LoadRessource("#23", #IMAGE_ICON, 48, 48)
Global Icn_Autorun.l      = LoadRessource("#24", #IMAGE_ICON, 48, 48)
Global Img_Autor.l        = LoadRessource("#25", #IMAGE_BITMAP, #Null, #Null)
Global Img_Error.l        = LoadRessource("#26", #IMAGE_BITMAP, #Null, #Null)
For x = 0 To #DIM_Logo: ImgLogo(x) = LoadRessource("#" + Str(27 + x), #IMAGE_BITMAP, #Null, #Null): Next

;{ Proceduren/Macros (Standard)
Declare FadeIn()
Declare FadeOut()
Declare Start()
Declare Beenden()
Declare.s Language_GetString(Name$)

Macro MsgBox_Error(Text, Title = Language_GetString("TleErr"))
 MessageRequester(Title, Text, #MB_OK|#MB_ICONERROR)
EndMacro

Macro LoWord(Value)
 Value & $FFFF
EndMacro

Macro InvertColor(Color)
 16777215 - Color
EndMacro

Procedure.i GadgetToolTipEx(Gadget, ToolTip$, FastHelp = 1)
 ;Erweiterte Prozedure die denn ToolTip Text einer Liste hinzufügt und dem Gadget zuweist
 If Gadget <> 0
  
  ;GadgetToolTip
  If FastHelp = 0
   GadgetToolTip(Gadget, ToolTip$)
  EndIf
  
  ;Hinzufügen/Ändern
  If ToolTip$ <> "" And FastHelp = 1
   If IsGadget(Gadget) <> 0: Gadget = GadgetID(Gadget): EndIf
  
   ForEach ToolTip()
    If ToolTip()\GadgetID = Gadget
     ToolTip()\ToolTip = ToolTip$
     ProcedureReturn 1
    EndIf
   Next
  
   AddElement(ToolTip())
   ToolTip()\GadgetID = Gadget
   ToolTip()\ToolTip  = ToolTip$
   ProcedureReturn 1
  
  ;Entfernen
  Else
   ForEach ToolTip()
    If ToolTip()\GadgetID = Gadget
     DeleteElement(ToolTip())
     ProcedureReturn 1
    EndIf
   Next
  EndIf
 
 EndIf
EndProcedure

Procedure.s GetGadgetToolTip(Gadget)
 If Gadget <> 0
 
  ForEach ToolTip()
   If ToolTip()\GadgetID = Gadget
    ProcedureReturn ToolTip()\ToolTip
   EndIf
  Next
 
 EndIf
EndProcedure

Procedure.i IsBitmap(Path$)
 Protected hFile.l
 hFile = ReadFile(#PB_Any, Path$)
 If hFile <> 0
  If ReadWord(hFile) = 19778
   ProcedureReturn 1
  EndIf
 Else
  ProcedureReturn -1
 EndIf
EndProcedure

Procedure.i SetDeskopWallpaper(Path$)
 ProcedureReturn SystemParametersInfo_(#SPI_SETDESKWALLPAPER, 0, Path$, #Null)
EndProcedure

Procedure.s GetDesktopWallpaper()
 Protected Path$ = Space(#MAX_PATH)
 SystemParametersInfo_(#SPI_GETDESKWALLPAPER, #MAX_PATH, @Path$, #Null)
 ProcedureReturn Path$
EndProcedure

Procedure.s UserName()
 Protected Name.s = Space(#MAX_PATH)
 Protected SSize.l = #MAX_PATH
 GetUserName_(@Name, @SSize)
 ProcedureReturn Name
EndProcedure

Procedure.s ExePath()
 Protected Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 Path$ = GetPathPart(Path$)
 PathAddBackslash_(@Path$)
 ProcedureReturn Path$
EndProcedure

Procedure.s ExeName()
 Protected Path$
 Path$ = Space(#MAX_PATH)
 GetModuleFileName_(0, @Path$, #MAX_PATH)
 ProcedureReturn GetFilePart(Path$)
EndProcedure

Procedure.s WindowPath()
 Protected Path$ = Space(#MAX_PATH)
 GetWindowsDirectory_(@Path$, #MAX_PATH)
 PathAddBackslash_(@Path$)
 ProcedureReturn Path$
EndProcedure

Procedure.s SystemPath()
 Protected Path$ = Space(#MAX_PATH)
 GetSystemDirectory_(@Path$, #MAX_PATH)
 PathAddBackslash_(@Path$)
 ProcedureReturn Path$
EndProcedure

Procedure.s GetFileNamePart(Path$)
 If Path$ <> ""
  ProcedureReturn Left(GetFilePart(Path$), Len(GetFilePart(Path$)) - Len(GetExtensionPart(Path$)) - 1)
 EndIf
EndProcedure

Procedure.s GetDrivePart(Path$)
 If Path$ <> ""
  PathStripToRoot_(@Path$)
  ProcedureReturn Path$
 EndIf
EndProcedure

Macro DriveLeter()
 GetDrivePart(ExePath())
EndMacro

Procedure.i GetAsyncKeyStateShortcut(Control, Menu, Shift, Misc)
 Protected Result.l = 1

 If Control <> 0
  If GetAsyncKeyState_(#VK_CONTROL)&$8000 = 0: Result = 0: EndIf
 EndIf
 If Menu <> 0
  If GetAsyncKeyState_(#VK_MENU)&$8000 = 0: Result = 0: EndIf
 EndIf
 If Shift <> 0
  If GetAsyncKeyState_(#VK_SHIFT)&$8000 = 0: Result = 0: EndIf
 EndIf
 If Misc <> 0
  If GetAsyncKeyState_(Misc)&$8000 = 0: Result = 0: EndIf
 EndIf
 
 ProcedureReturn Result
EndProcedure

Procedure.i LoadRessource(hRes$, Typ, Width, Height)
 Protected hIcn.l
 hIcn = LoadImage_(GetModuleHandle_(0), hRes$, Typ, Width, Height, #LR_DEFAULTCOLOR)
 If hIcn = 0
  MsgBox_Error(Language_GetString("MsgErr_LoadRess") + #CRLF$ + "ID: " + hRes$)
  End
 Else
  ProcedureReturn hIcn
 EndIf
EndProcedure

Procedure.i LoadFontEx(Const, Name$, Size, Flag)
 Protected hFont.l
 hFont = LoadFont(Const, Name$, Size, Flag)
 If hFont = 0
  MsgBox_Error(Language_GetString("MsgErr_LoadFont") + #CRLF$ + "Font: '" + Name$ + "'")
  End
 Else
  ProcedureReturn hFont
 EndIf
EndProcedure

Procedure.i Window_Snap(Window, Corner, Gap)
 Protected D.RECT, DesktopW.l, DesktopH.l, W.RECT, WindowW.l, WindowH.l
 If IsWindow(Window) <> 0 And Corner >= 1 And Corner <= 4 And Gap >= 0 And Gap <= 1000
  SystemParametersInfo_(#SPI_GETWORKAREA, 0, @D, 0)
  DesktopW = D\right
  DesktopH = D\bottom
  GetWindowRect_(WindowID(Window), @W)
  WindowW = W\right - W\left
  WindowH = W\bottom - W\top
  Select Corner
   Case 1:ProcedureReturn MoveWindow_(WindowID(Window), Gap, Gap, WindowW, WindowH, #True)
   Case 2:ProcedureReturn MoveWindow_(WindowID(Window), DesktopW - WindowW - Gap, Gap, WindowW, WindowH, #True)
   Case 3:ProcedureReturn MoveWindow_(WindowID(Window), DesktopW - WindowW - Gap, DesktopH - WindowH - Gap, WindowW, WindowH, #True)
   Case 4:ProcedureReturn MoveWindow_(WindowID(Window), Gap, DesktopH - WindowH - Gap, WindowW, WindowH, #True)
  EndSelect
 EndIf
EndProcedure

Procedure.i Window_CenterOnDesktop(Window)
 Protected W.RECT
 If IsWindow(Window) <> 0
  GetWindowRect_(WindowID(Window), @W)
  ProcedureReturn SetWindowPos_(WindowID(Window), 0, GetSystemMetrics_(#SM_CXSCREEN)/2 - (W\right - W\left)/2, GetSystemMetrics_(#SM_CYSCREEN)/2 - (W\bottom - W\top)/2, 0, 0, #SWP_NOZORDER|#SWP_NOSIZE|#SWP_NOACTIVATE)
 EndIf
EndProcedure

Procedure.i Window_SetLayeredStyle(Window, Bool)
 If IsWindow(Window) <> 0
  If Bool = 1
   ProcedureReturn SetWindowLong_(WindowID(Window), #GWL_EXSTYLE, GetWindowLong_(WindowID(Window), #GWL_EXSTYLE) | #WS_EX_LAYERED)
  Else
   ProcedureReturn SetWindowLong_(WindowID(Window), #GWL_EXSTYLE, GetWindowLong_(WindowID(Window), #GWL_EXSTYLE) & ~#WS_EX_LAYERED)
  EndIf
 EndIf
EndProcedure

Procedure.i Window_SetLayeredAttribute(Window, Color, Opacity)
 If IsWindow(Window) <> 0
  ProcedureReturn SetLayeredWindowAttributes_(WindowID(Window), Color, Opacity, #LWA_COLORKEY|#LWA_ALPHA)
 EndIf
EndProcedure

Procedure.i Window_SetBackroundImage(Window, Image)
 Protected B.LOGBRUSH, hBrush.l
 If IsImage(Image) <> 0 And IsWindow(Window) <> 0
  B\lbStyle = #BS_PATTERN
  B\lbColor = #DIB_RGB_COLORS
  B\lbHatch = ImageID(Image)
  hBrush = CreateBrushIndirect_(@B)
  If hBrush <> 0
   SetClassLong_(WindowID(Window), #GCL_HBRBACKGROUND, hBrush)
   InvalidateRect_(WindowID(Window), #Null, #True)
   ProcedureReturn hBrush
  EndIf
 EndIf
EndProcedure

Procedure.i Window_AlwaysOnTop(Window, Bool)
 If IsWindow(Window) <> 0
  If Bool <> 0: Bool = 1: EndIf
  Select Bool
   Case 0:ProcedureReturn SetWindowPos_(WindowID(Window), #HWND_NOTOPMOST, 0, 0, 0, 0, #SWP_NOACTIVATE|#SWP_NOSIZE|#SWP_NOMOVE)
   Case 1:ProcedureReturn SetWindowPos_(WindowID(Window), #HWND_TOPMOST, 0, 0, 0, 0, #SWP_NOACTIVATE|#SWP_NOSIZE|#SWP_NOMOVE)
  EndSelect
 EndIf
EndProcedure

Procedure.i TreeGadget_ChangeIcon(Gadget, Index, hIcn)
 Protected hImgList.l, IcnIndex.l, II.TV_ITEM, x.l, nIcnIndex.l, AddBool.l
 If IsGadget(Gadget) <> 0 And GadgetType(Gadget) = #PB_GadgetType_Tree And Index >= 0 And Index < CountGadgetItems(Gadget)
  hImgList = SendMessage_(GadgetID(Gadget), #TVM_GETIMAGELIST, #LVSIL_NORMAL, #Null)
  If hImgList <> 0
   II\hitem = GadgetItemID(Gadget, Index)
   II\mask  = #TVIF_IMAGE
   If SendMessage_(GadgetID(Gadget), #TVM_GETITEM, #Null, @II) = 0: ProcedureReturn 0: EndIf
   IcnIndex = II\iImage
   If IcnIndex = 0: ProcedureReturn 0: EndIf
   For x = 0 To CountGadgetItems(Gadget) - 1
    II\hitem = GadgetItemID(Gadget, x)
    II\mask  = #TVIF_IMAGE
    If SendMessage_(GadgetID(Gadget), #TVM_GETITEM, #Null, @II) = 0: ProcedureReturn 0: EndIf
    If II\iImage = IcnIndex And x <> Index: AddBool = 1: Break: EndIf
   Next
   If AddBool = 1
    nIcnIndex = ImageList_AddIcon_(hImgList, hIcn)
    If nIcnIndex = -1: ProcedureReturn 0: EndIf
    II\hitem  = GadgetItemID(Gadget, Index)
    II\mask   = #TVIF_IMAGE
    II\iImage = nIcnIndex
    If SendMessage_(GadgetID(Gadget), #TVM_SETITEM, #Null, @II) = 0: ProcedureReturn 0: EndIf
    II\hitem          = GadgetItemID(Gadget, Index)
    II\mask           = #TVIF_SELECTEDIMAGE
    II\iSelectedImage = nIcnIndex
    If SendMessage_(GadgetID(Gadget), #TVM_SETITEM, #Null, @II) = 0: ProcedureReturn 0: EndIf
    If SendMessage_(GadgetID(Gadget), #TVM_SETIMAGELIST, #LVSIL_NORMAL, hImgList) <> 0: ProcedureReturn 1: EndIf
   Else
    If ImageList_ReplaceIcon_(hImgList, IcnIndex, hIcn) = -1: ProcedureReturn 0: EndIf
    If SendMessage_(GadgetID(Gadget), #TVM_SETIMAGELIST, #LVSIL_NORMAL, hImgList) <> 0: ProcedureReturn 1: EndIf
   EndIf
  EndIf
 EndIf
EndProcedure

Procedure.i StringGadget_SetLimitText(Gadget, Limit)
 If IsGadget(Gadget) <> 0 And GadgetType(Gadget) = #PB_GadgetType_String
  ProcedureReturn SendMessage_(GadgetID(Gadget), #EM_LIMITTEXT, Limit, #Null)
 EndIf
EndProcedure

Procedure.q GetDiskSpace_Free(Drive$)
 Protected FreeBytes.q, TotalBytes.q, TotalFreeBytes.q
 If GetDiskFreeSpaceEx_(@Drive$, @FreeBytes, @TotalBytes, @TotalFreeBytes) <> #False
  ProcedureReturn TotalFreeBytes
 Else
  ProcedureReturn #False
 EndIf
EndProcedure

Procedure.q GetDiskSpace_Max(Drive$)
 Protected FreeBytes.q, TotalBytes.q, TotalFreeBytes.q
 If GetDiskFreeSpaceEx_(@Drive$, @FreeBytes, @TotalBytes, @TotalFreeBytes) <> #False
  ProcedureReturn TotalBytes
 Else
  ProcedureReturn #False
 EndIf
EndProcedure

Procedure.s FormatByteSize(Size.q)
 If Size > 1073741824  ;GigaByte
  ProcedureReturn StrF(Size / 1073741824, 2) + " GB"
 ElseIf Size > 1048576 ;MegaByte
  ProcedureReturn StrF(Size / 1048576, 2) + " MB"
 ElseIf Size > 1024    ;KiloByte
  ProcedureReturn StrF(Size / 1044, 2) + " KB"
 EndIf
EndProcedure
;}

;- Ressource
Global NewList Icons.l()
Global lImgList.l

lImgList = ImageList_LoadImage_(GetModuleHandle_(0), "#1", 16, #Null, #CLR_DEFAULT, #IMAGE_BITMAP, #LR_CREATEDIBSECTION)
If lImgList = 0

 For L_Next = 0 To ImageList_GetImageCount_(lImgList) - 1
  Debug ImageList_GetIcon_(lImgList, L_Next, #Null)
 Next

Else
 MsgBox_Error(Language_GetString("MsgErr_LoadRess") + #CRLF$ + "ID: #1"): End
EndIf

;- Win_Hide
If OpenWindow(#Win_Hide, 0, 0, 0, 0, "", #PB_Window_Invisible) <> #False
 DisableWindow(#Win_Hide, #True)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'MainHide'"): End
EndIf
;- Win_Main
If OpenWindow(#Win_Main, 0, 0, 400, 560, "", #PB_Window_Invisible|#PB_Window_BorderLess, WindowID(#Win_Hide)) <> #False
  ImageGadget(#G_IG_Main_Drive,       270,  46, 0, 0, 0)
  ImageGadget(#G_IG_Main_OwnFiles,    270,  81, 0, 0, 0)
  ImageGadget(#G_IG_Main_Documents,   270, 116, 0, 0, 0)
  ImageGadget(#G_IG_Main_Music,       270, 151, 0, 0, 0)
  ImageGadget(#G_IG_Main_Pictures,    270, 186, 0, 0, 0)
  ImageGadget(#G_IG_Main_Movies,      270, 221, 0, 0, 0)
  ImageGadget(#G_IG_Main_Search,      270, 256, 0, 0, 0)
  ImageGadget(#G_IG_Main_Preferences, 270, 294, 0, 0, 0)
  ImageGadget(#G_IG_Main_Misc,        270, 329, 0, 0, 0)
  ImageGadget(#G_IG_Main_End,         310, 526, 0, 0, 0)
  ImageGadget(#G_IG_Main_Percent,     158, 534, 0, 0, 0)
  For x = 0 To #G_IG_Main_MnuEnd - #G_IG_Main_MnuStart - 1
   ImageGadget(#G_IG_Main_MnuStart + x, 10, 46 + x * 24, 0, 0, 0)
  Next

 If CreatePopupMenu(#Menu_PopUp_Search) <> #False
  MenuItem(#Mnu_SearchDrive,    "")
  MenuItem(#Mnu_SearchFolder,   "")
  MenuItem(#Mnu_SearchOwnFiles, "")
  MenuItem(#Mnu_SearchComputer, "")
  MenuItem(#Mnu_SearchINET,     "")
 Else
  MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'Search'"): End
 EndIf
 If CreatePopupMenu(#Menu_PopUp_Programs) <> #False
  OpenSubMenu("Starten")
   MenuItem(#Mnu_PrgStartNormal, "")
   MenuItem(#Mnu_PrgStartMaximize, "")
   MenuItem(#Mnu_PrgStartMinimize, "")
  CloseSubMenu()
  MenuItem(#Mnu_PrgPath, "")
  MenuBar()
  MenuItem(#Mnu_PrgPreferences, "")
  MenuBar()
  MenuItem(#Mnu_PrgScrollUp, "")
  MenuItem(#Mnu_PrgScrollDown, "")
 Else
  MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'Programms'"): End
 EndIf
 If CreatePopupMenu(#Menu_PopUp_Misc) <> #False
  MenuItem(#Mnu_MiscHelp, "")
  MenuItem(#Mnu_MiscWebsite, "")
  MenuItem(#Mnu_MiscUpdate, "")
  MenuItem(#Mnu_MiscSkinCreator, "")
  MenuItem(#Mnu_MiscAutorunCreator, "")
  MenuItem(#Mnu_MiscInformation, "")
 Else
  MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'Misc'"): End
 EndIf
 If CreatePopupMenu(#Menu_PopUp_SysTray) <> #False
  MenuItem(#Mnu_SysTrayShow, "")
  MenuBar()
  MenuItem(#Mnu_SysTrayPreferences, "")
  MenuItem(#Mnu_SysTrayUpdate, "")
  MenuItem(#Mnu_SysTrayAbout, "")
  MenuBar()
  MenuItem(#Mnu_SysTrayEnd, "")
 Else
  MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'SysTray'"): End
 EndIf
 Window_SetLayeredStyle(#Win_Main, #True)
 Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 255)
 Global hWnd_Main.l = WindowID(#Win_Main)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Main'"): End
EndIf
;- Win_Preferences
If OpenWindow(#Win_Preferences, 0, 0, 540, 295, "", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Hide)) <> #False

  TreeGadget(#G_TR_Preferences_Categorie, 5, 5, 140, 250, #PB_Tree_NoLines|#PB_Tree_NoButtons|#PB_Tree_AlwaysShowSelection)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Programs, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Starting)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Interface, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Skin, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Programmenu, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Fonts, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Shortcuts, 0)
   AddGadgetItem(#G_TR_Preferences_Categorie, -1, "", Icn_Folder, 0)
  Frame3DGadget(#G_FR_Preferences_Gap, -5, 260, 550, 2, "", #PB_Frame3D_Single)
  ButtonImageGadget(#G_BI_Preferences_Cancel, 382, 265, 75, 24, Icn_Cancel)
  ButtonImageGadget(#G_BI_Preferences_Apply, 460, 265, 75, 24, Icn_Accept)
  TextGadget(#G_TX_Preferences_FastHelp, 5, 265, 350, 25, "")
  ;Programms
  TreeGadget(#G_TR_Preferences_Programs_List, 150, 5, 180, 223, #PB_Tree_AlwaysShowSelection|#PB_Tree_NoLines|#PB_Tree_NoButtons)
  ButtonImageGadget(#G_BI_Preferences_Programs_Up, 150, 231, 24, 24, Icn_AppUp)
  ButtonImageGadget(#G_BI_Preferences_Programs_Down, 176, 231, 24, 24, Icn_AppDown)
  ButtonImageGadget(#G_BI_Preferences_Programs_Sort, 202, 231, 24, 24, Icn_AppSort)
  ButtonImageGadget(#G_BI_Preferences_Programs_Add, 235, 231, 24, 24, Icn_AppAdd)
  ButtonImageGadget(#G_BI_Preferences_Programs_Del, 261, 231, 24, 24, Icn_AppDel)
  ButtonImageGadget(#G_BI_Preferences_Programs_Warning, 306, 231, 24, 24, Icn_Warning)
  TextGadget(#G_TX_Preferences_Programs_Name, 336, 7, 198, 13, "")
  StringGadget(#G_SR_Preferences_Programs_Name, 335, 20, 200, 20, "")
  TextGadget(#G_TX_Preferences_Programs_Path, 335, 42, 198, 13, "")
  StringGadget(#G_SR_Preferences_Programs_Path, 335, 55, 170, 20, "")
  ButtonGadget(#G_BN_Preferences_Programs_Path, 510, 55, 24, 20, "")
  TextGadget(#G_TX_Preferences_Programs_Parameter, 335, 77, 198, 13, "")
  StringGadget(#G_SR_Preferences_Programs_Parameter, 335, 90, 200, 20, "")
  TextGadget(#G_TX_Preferences_Programs_Icon, 335, 112, 198, 13, "")
  StringGadget(#G_SR_Preferences_Programs_Icon, 335, 125, 170, 20, "")
  ButtonGadget(#G_BN_Preferences_Programs_Icon, 510, 125, 24, 20, "")
  TextGadget(#G_TX_Preferences_Programs_WorkPath, 335, 147, 200, 13, "")
  StringGadget(#G_SR_Preferences_Programs_WorkPath, 335, 160, 170, 20, "")
  ButtonGadget(#G_BN_Preferences_Programs_WorkPath, 510, 160, 24, 20, "")
  TextGadget(#G_TX_Preferences_Programs_StartType, 335, 182, 198, 13, "")
  ComboBoxGadget(#G_CB_Preferences_Programs_StartType, 335, 195, 200, 180)
   AddGadgetItem(#G_CB_Preferences_Programs_StartType, -1, "")
   AddGadgetItem(#G_CB_Preferences_Programs_StartType, -1, "")
   AddGadgetItem(#G_CB_Preferences_Programs_StartType, -1, "")
   AddGadgetItem(#G_CB_Preferences_Programs_StartType, -1, "")
  CheckBoxGadget(#G_CB_Preferences_Programs_AutoStart, 340, 225, 150, 15, "")
  ;Starting
  CheckBoxGadget(#G_CH_Preferences_Starting_ShowAtStart, 155, 10, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_CheckVersion, 155, 30, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_OSTest, 155, 46, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_CheckApps, 155, 62, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_SafetycopyPrefs, 155, 83, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_SafetycopyType1, 158, 100, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_SafetycopyType2, 158, 116, 180, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_SafetycopyType3, 158, 132, 180, 15, "")
  Frame3DGadget(#G_FR_Preferences_Starting_Wallpaper, 155, 170, 280, 80, "")
  CheckBoxGadget(#G_CH_Preferences_Starting_WallpaperChange, 165, 195, 150, 15, "")
  StringGadget(#G_SR_Preferences_Starting_Wallpaper, 165, 215, 220, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Preferences_Starting_Wallpaper, 390, 215, 35, 20, "...")
  ;Interface
  TextGadget(#G_TX_Preferences_Interface_Language, 150, 5, 150, 15, "")
  ComboBoxGadget(#G_CB_Preferences_Interface_Language, 150, 20, 150, 180)
  TextGadget(#G_TX_Preferences_Interface_Position, 150, 50, 150, 15, "")
  ComboBoxGadget(#G_CB_Preferences_Interface_Position, 150, 65, 150, 20)
   AddGadgetItem(#G_CB_Preferences_Interface_Position, -1, "")
   AddGadgetItem(#G_CB_Preferences_Interface_Position, -1, "")
   AddGadgetItem(#G_CB_Preferences_Interface_Position, -1, "")
   AddGadgetItem(#G_CB_Preferences_Interface_Position, -1, "")
   AddGadgetItem(#G_CB_Preferences_Interface_Position, -1, "")
  TextGadget(#G_TX_Preferences_Interface_Distance, 150, 100, 150, 15, "", #PB_Text_Center)
  TrackBarGadget(#G_TB_Preferences_Interface_Distance, 155, 115, 125, 20, 0, 25, #PB_TrackBar_Ticks)
  TextGadget(#G_TX_Preferences_Interface_DistanceAmount, 280, 113, 20, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Interface_Fading, 150, 145, 150, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Interface_AlwaysOnTop, 150, 162, 150, 15, "")
  TextGadget(#G_TX_Preferences_Interface_SystrayIcon, 155, 185, 125, 15, "", #PB_Text_Center)
  TrackBarGadget(#G_TB_Preferences_Interface_SystrayIcon, 155, 200, 125, 20, 0, 0, #PB_TrackBar_Ticks)
  ImageGadget(#G_IG_Preferences_Interface_SystrayIcon, 280, 200, 16, 16, 0)
   DisableGadget(#G_IG_Preferences_Interface_SystrayIcon, #True)
  CheckBoxGadget(#G_CH_Preferences_Interface_SkinSystrayIcon, 150, 225, 150, 15, "")
  Frame3DGadget(#G_FR_Preferences_Interface_Space, 315, 15, 210, 90, "")
  ContainerGadget(#G_CN_Preferences_Interface_ShowSpace, 320, 35, 200, 32)
   OptionGadget(#G_OP_Preferences_Interface_ShwFreeSpace, 4, 0, 190, 15, "")
   OptionGadget(#G_OP_Preferences_Interface_ShwUsedSpace, 4, 15, 190, 15, "")
  CloseGadgetList()
  ContainerGadget(#G_CN_Preferences_Interface_SpaceTyp, 320, 67, 200, 32)
   OptionGadget(#G_OP_Preferences_Interface_ShwPercent, 9, 0, 150, 15, "")
   OptionGadget(#G_OP_Preferences_Interface_ShwSpace, 9, 15, 150, 15, "")
  CloseGadgetList()
  ;Menu
  Frame3DGadget(#G_FR_Preferences_Menu_TAdjust, 150, 5, 180, 75, "")
  OptionGadget(#G_OP_Preferences_Menu_TAdjustLeft, 160, 25, 150, 15, "")
  OptionGadget(#G_OP_Preferences_Menu_TAdjustCenter, 160, 40, 150, 15, "")
  OptionGadget(#G_OP_Preferences_Menu_TAdjustRight, 160, 55, 150, 15, "")
  TextGadget(#G_TX_Preferences_Menu_DistanceBorder, 150, 95, 180, 13, "", #PB_Text_Center)
  TrackBarGadget(#G_TB_Preferences_Menu_DistanceBorder, 150, 110, 180, 20, 0, 15, #PB_TrackBar_Ticks)
  TextGadget(#G_TX_Preferences_Menu_DistanceIcnTxt, 150, 145, 180, 13, "", #PB_Text_Center)
  TrackBarGadget(#G_TB_Preferences_Menu_DistanceIcnTxt, 150, 160, 180, 20, 0, 15, #PB_TrackBar_Ticks)
  CheckBoxGadget(#G_CH_Preferences_Menu_ShwIcons, 150, 195, 180, 15, "")
  ;Skin
  TextGadget(#G_TX_Preferences_Skin_List, 150, 5, 210, 15, "")
  ComboBoxGadget(#G_CB_Preferences_Skin_List, 150, 20, 210, 180)
  TextGadget(#G_TX_Preferences_Skin_Name, 150, 70, 210, 15, "")
  StringGadget(#G_SR_Preferences_Skin_Name, 150, 85, 210, 20, "", #PB_String_ReadOnly)
  TextGadget(#G_TX_Preferences_Skin_Version, 150, 115, 210, 15, "")
  StringGadget(#G_SR_Preferences_Skin_Version, 150, 130, 210, 20, "", #PB_String_ReadOnly)
  TextGadget(#G_TX_Preferences_Skin_Autor, 150, 160, 210, 15, "")
  StringGadget(#G_SR_Preferences_Skin_Autor, 150, 175, 210, 20, "", #PB_String_ReadOnly)
  TextGadget(#G_TX_Preferences_Skin_Homepage, 150, 205, 210, 15, "")
  StringGadget(#G_SR_Preferences_Skin_Homepage, 150, 220, 210, 20, "", #PB_String_ReadOnly)
  TextGadget(#G_TX_Preferences_Skin_Preview, 370, 15, 150, 15, "")
  ImageGadget(#G_IG_Preferences_Skin_Preview, 370, 30, 150, 210, 0)
   DisableGadget(#G_IG_Preferences_Skin_Preview, #True)
  ;Fonts
  TextGadget(#G_TX_Preferences_Fonts_Title, 150, 5, 375, 15, "")
  ListIconGadget(#G_LI_Preferences_Fonts_List, 150, 20, 375, 235, "", 120, #PB_ListIcon_FullRowSelect|#PB_ListIcon_AlwaysShowSelection)
   AddGadgetColumn(#G_LI_Preferences_Fonts_List, 1, "", 80)
   AddGadgetColumn(#G_LI_Preferences_Fonts_List, 2, "", 50)
   AddGadgetColumn(#G_LI_Preferences_Fonts_List, 3, "", 50)
   AddGadgetColumn(#G_LI_Preferences_Fonts_List, 4, "", 70)
   AddGadgetItem(#G_LI_Preferences_Fonts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Fonts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Fonts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Fonts_List, -1, "")
  ;Hotkeys
  TextGadget(#G_TX_Preferences_Shortcuts_Title, 150, 5, 375, 15, "")
  ListIconGadget(#G_LI_Preferences_Shortcuts_List, 150, 20, 375, 165, "", 120, #PB_ListIcon_FullRowSelect|#PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_CheckBoxes)
   AddGadgetColumn(#G_LI_Preferences_Shortcuts_List, 1, "", 60)
   AddGadgetColumn(#G_LI_Preferences_Shortcuts_List, 2, "", 60)
   AddGadgetColumn(#G_LI_Preferences_Shortcuts_List, 3, "", 60)
   AddGadgetColumn(#G_LI_Preferences_Shortcuts_List, 4, "", 70)
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
   AddGadgetItem(#G_LI_Preferences_Shortcuts_List, -1, "")
  Frame3DGadget(#G_FR_Preferences_Shortcuts_Gap, 160, 195, 360, 50, "")
  CheckBoxGadget(#G_CH_Preferences_Shortcuts_Strg, 175, 215, 65, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Shortcuts_Alt, 250, 215, 65, 15, "")
  CheckBoxGadget(#G_CH_Preferences_Shortcuts_Shift, 325, 215, 65, 15, "")
  ComboBoxGadget(#G_CB_Preferences_Shortcuts_Hotkey, 400, 213, 100, 20)
   For x = 0 To #DIM_KeyCode: AddGadgetItem(#G_CB_Preferences_Shortcuts_Hotkey, -1, KeyCode(x)\Name): Next
  ;Folders
  TextGadget(#G_TX_Preferences_Folder_OwnFiles, 150, 5, 340, 15, "")
  StringGadget(#G_SR_Preferences_Folder_FolderOwnFiles, 150, 20, 340, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Preferences_Folder_OwnFilesChangeFolder, 495, 20, 30, 20, "")
  CheckBoxGadget(#G_CH_Preferences_Folder_MaximizeOwnFiles, 150, 42, 150, 15, "")
  TextGadget(#G_TX_Preferences_Folder_OwnFilesFolderName, 150, 65, 375, 15, "")
  ListIconGadget(#G_LI_Preferences_Folder_OwnFilesFolderName, 150, 80, 375, 105, "", 120, #PB_ListIcon_FullRowSelect|#PB_ListIcon_AlwaysShowSelection)
   AddGadgetColumn(#G_LI_Preferences_Folder_OwnFilesFolderName, 1, "", 250)
   AddGadgetItem(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, "")
   AddGadgetItem(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, "")
   AddGadgetItem(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, "")
   AddGadgetItem(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, "")
  TextGadget(#G_TX_Preferences_Folder_BrowserStartPage, 150, 195, 375, 15, "")
  StringGadget(#G_SR_Preferences_Folder_BrowserStartPage, 150, 210, 375, 20, "")
  CheckBoxGadget(#G_CH_Preferences_Folder_BrowserStartPage, 150, 232, 150, 15, "")

 If CreatePopupMenu(#Menu_PopUp_Fonts)
  MenuItem(#Mnu_FontsFont, "")
  MenuItem(#Mnu_FontsColor, "")
 Else
  MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'Fonts'")
 EndIf
 DisableWindow(#Win_Preferences, #True)
 Global hWnd_Preferences.l = WindowID(#Win_Preferences)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Preferences'"): End
EndIf
;- Win_Information
If OpenWindow(#Win_Information, 0, 0, 260, 335, "", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Hide)) <> #False

  ContainerGadget(#G_CT_Information_Logo, 5, 5, 250, 82, #PB_Container_Flat)
   ImageGadget(#G_IG_Information_Logo, 0, 0, 200, 80, ImgLogo(0))
  CloseGadgetList()
  ScrollAreaGadget(#G_SA_Information_Data, 5, 95, 250, 200, 248 - GetSystemMetrics_(#SM_CXHTHUMB), 550, 5, #PB_ScrollArea_Flat)
   SetGadgetColor(#G_SA_Information_Data, #PB_Gadget_BackColor, $FFFFFF)
   ImageGadget(#G_IG_Information_Autor, 10, 10, 48, 48, Img_Autor, #PB_Image_Border)
   TextGadget(#G_TX_Information_AutorName, 72, 13, 150, 13, #S_AutorName)
   SetGadgetColor(#G_TX_Information_AutorName, #PB_Gadget_BackColor, $FFFFFF)
   TextGadget(#G_TX_Information_AutorMail, 72, 28, 150, 13, #S_AutorMail)
   SetGadgetColor(#G_TX_Information_AutorMail, #PB_Gadget_BackColor, $FFFFFF)
   TextGadget(#G_TX_Information_AutorPage, 72, 43, 150, 13, #S_AutorPage)
   SetGadgetColor(#G_TX_Information_AutorPage, #PB_Gadget_BackColor, $FFFFFF)
   TextGadget(#G_SR_Information_MiscInfos, 0, 72, 248 - GetSystemMetrics_(#SM_CXHTHUMB), 470, #PrgName + " " + StrF(#PrgVers/100, 2) + #CRLF$ + "Copyright©PureSoft, 2007" + #CRLF$ + #CRLF$ + #PrgInformation, #PB_Text_Center)
   SetGadgetColor(#G_SR_Information_MiscInfos, #PB_Gadget_BackColor, $FFFFFF)
  CloseGadgetList()
  ButtonImageGadget(#G_BI_Information_Accept, 92, 305, 75, 24, Icn_Accept)

 DisableGadget(#G_CT_Information_Logo, #True)
 DisableGadget(#G_IG_Information_Autor, #True)
 DisableWindow(#Win_Information, #True)
 Global hWnd_Information.l = WindowID(#Win_Information)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Informations'"): End
EndIf
;- Win_Update
If OpenWindow(#Win_Update, 0, 0, 280, 220, "", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Hide))

  ImageGadget(#G_IG_Update_Logo, 15, 10, 48, 48, Icn_Update)
  Frame3DGadget(#G_FR_Update_Version, 75, 0, 200, 55, "")
  TextGadget(#G_TX_Update_Version_Use, 80, 15, 125, 15, "", #PB_Text_Right)
  TextGadget(#G_TX_Update_Version_UseV, 210, 15, 60, 15, StrF(#PrgVers/100, 2))
  TextGadget(#G_TX_Update_Version_Newest, 80, 30, 125, 15, "", #PB_Text_Right)
  TextGadget(#G_TX_Update_Version_NewestV, 210, 30, 60, 15, "")
  ListViewGadget(#G_LV_Update_Log, 5, 65, 270, 120)
  ButtonGadget(#G_BN_Update_Manuel, 110, 190, 80, 25, "")
  ButtonGadget(#G_BN_Update_Start, 195, 190, 80, 25, "")

 DisableGadget(#G_IG_Update_Logo, #True)
 DisableWindow(#Win_Update, #True)
 Global hWnd_Update.l = WindowID(#Win_Update)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Update'"): End
EndIf
;- Win_SkinCreator
If OpenWindow(#Win_SkinCreator, 0, 0, 350, 390, #PrgName, #PB_Window_SystemMenu|#PB_Window_Invisible, WindowID(#Win_Hide)) <> #False

  ImageGadget(#G_IG_SkinCreator_Logo, 5, 15, 48, 48, Icn_SkinCreator)
  TextGadget(#G_TX_SkinCreator_ResPath, 60, 2, 280, 13, "")
  StringGadget(#G_SR_SkinCreator_ResPath, 60, 15, 245, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_SkinCreator_ResPath, 310, 15, 35, 20, "")
  TextGadget(#G_TX_SkinCreator_SkinPath, 60, 42, 285, 13, "")
  StringGadget(#G_SR_SkinCreator_SkinPath, 60, 55, 245, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_SkinCreator_SkinPath, 310, 55, 35, 20, "")
  ListIconGadget(#G_LI_SkinCreator_Preferences, 5, 80, 340, 150, "", 180, #PB_ListIcon_AlwaysShowSelection|#PB_ListIcon_FullRowSelect|#PB_ListIcon_GridLines)
   AddGadgetColumn(#G_LI_SkinCreator_Preferences, 1, "", 155)
   For x = 0 To 5: AddGadgetItem(#G_LI_SkinCreator_Preferences, -1, ""): Next
  CheckBoxGadget(#G_CH_SkinCreator_ShwLog, 10, 240, 120, 15, "")
  ButtonGadget(#G_BN_SkinCreator_Cancel, 190, 235, 75, 24, "")
  ButtonGadget(#G_BN_SkinCreator_Create, 270, 235, 75, 24, "")
  ListViewGadget(#G_LV_SkinCreator_Log, 5, 265, 340, 120)

 DisableWindow(#Win_SkinCreator, #True)
 DisableGadget(#G_IG_SkinCreator_Logo, #True)
 Global hWnd_SkinCreator.l = WindowID(#Win_SkinCreator)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'SkinCreator'"): End
EndIf
;- Win_Autostart
If OpenWindow(#Win_Autostart, 0, 0, 345, 335, "", #PB_Window_Invisible|#PB_Window_SystemMenu, WindowID(#Win_Hide)) <> #False

  ImageGadget(#G_IG_Autorun_Logo, 5, 5, 48, 48, Icn_Autorun)
   DisableGadget(#G_IG_Autorun_Logo, #True)
  TextGadget(#G_TX_Autorun_Description, 60, 5, 280, 55, "")
  TextGadget(#G_TX_Autorun_DriveName, 5, 70, 335, 15, "")
  StringGadget(#G_SR_Autorun_DriveName, 5, 85, 335, 20, "")
  TextGadget(#G_TX_Autorun_DriveIcon, 5, 115, 335, 15, "")
  StringGadget(#G_SR_Autorun_DriveIcon, 5, 130, 300, 20, "", #PB_String_ReadOnly)
  ButtonGadget(#G_BN_Autorun_DriveIcon, 310, 130, 30, 20, "")
  CheckBoxGadget(#G_CH_Autorun_DoubleClick, 10, 155, 200, 15, "")
  CheckBoxGadget(#G_CH_Autorun_KontextEntry, 10, 175, 180, 15, "")
  StringGadget(#G_SR_Autorun_Preview, 5, 200, 335, 100, "", #PB_String_ReadOnly|#ES_MULTILINE|#ES_AUTOVSCROLL|#WS_VSCROLL|#ES_AUTOHSCROLL|#WS_HSCROLL)
  ButtonGadget(#G_BN_Autorun_Remove, 5, 305, 75, 24, "")
  ButtonGadget(#G_BN_Autorun_Copy, 85, 305, 75, 24, "")
  ButtonImageGadget(#G_BI_Autorun_Cancel, 185, 305, 75, 24, Icn_Cancel)
  ButtonImageGadget(#G_BI_Autorun_Apply, 265, 305, 75, 24, Icn_Accept)

 Global hWnd_Autorun.l = WindowID(#Win_Autostart)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Autorun'"): End
EndIf
;- Win_Error
If OpenWindow(#Win_Error, 283, 521, 457, 237, "", #PB_Window_Invisible|#PB_Window_TitleBar, WindowID(#Win_Hide)) <> #False

  ImageGadget(#G_IG_Error_Logo, 0, 0, 177, 200, Img_Error)
  StringGadget(#G_SR_Error_Message, 177, 0, 280, 200, "", #ES_READONLY|#ES_MULTILINE|#ES_AUTOVSCROLL|#WS_VSCROLL|#ES_AUTOHSCROLL|#WS_HSCROLL|#PB_String_BorderLess)
  SetGadgetColor(#G_SR_Error_Message, #PB_Gadget_BackColor, $FFFFFF)
  Frame3DGadget(#G_FR_Error_Gap, -5, 200, 467, 2, "", #PB_Frame3D_Single)
  ButtonGadget(#G_BN_Error_Copy, 5, 207, 80, 25, "")
  ButtonGadget(#G_BN_Error_Ignore, 90, 207, 80, 25, "")
  ButtonGadget(#G_BN_Error_End, 372, 207, 80, 25, "")

 Global hWnd_Error.l = WindowID(#Win_Error)
 DisableWindow(#Win_Error, #True)
Else
 MsgBox_Error(Language_GetString("MsgErr_Window") + " 'Error'"): End
EndIf

;- Procedures Program
Procedure ErrorHandler()
 Protected ErrorMsg.s, Text.s, ErrWE.l
 
 Window_CenterOnDesktop(#Win_Error)
 DisableWindow(#Win_Error, #False)
 HideWindow(#Win_Error, #False)
 SetActiveWindow(#Win_Error)
 
 B_OnError = #True
 
 ErrorMsg = "Line: " + Str(ErrorLine()) + #CRLF$ + "Adress: " + Str(ErrorAddress()) + #CRLF$ + "Description: " + ErrorMessage()
 Text     = Language_GetString("ErrTxt_Text")
 Text     = ReplaceString(Text, "%Error%", #CRLF$ + ErrorMsg + #CRLF$, 1)
 
 SetGadgetText(#G_SR_Error_Message, Text)
 
 Repeat
  ErrWE = WaitWindowEvent()
  If ErrWE = #PB_Event_Gadget
   Select EventGadget()
    Case #G_BN_Error_Copy
     SetClipboardText(ErrorMsg)
    Case #G_BN_Error_Ignore
     DisableWindow(#Win_Error, #True)
     HideWindow(#Win_Error, #True)
     B_OnError = #False
     ProcedureReturn 1
    Case #G_BN_Error_End
     End
   EndSelect
  EndIf
 ForEver
EndProcedure

;Setzt alle Grafiken neu, RefreshEffect
Macro RefreshWindow()
 SetGadgetState(#G_IG_Main_Drive, ImageID(#Img_Drive))
 SetGadgetState(#G_IG_Main_OwnFiles, ImageID(#Img_OwnFiles))
 SetGadgetState(#G_IG_Main_Documents, ImageID(#Img_Documents))
 SetGadgetState(#G_IG_Main_Music, ImageID(#Img_Music))
 SetGadgetState(#G_IG_Main_Pictures, ImageID(#Img_Pictures))
 SetGadgetState(#G_IG_Main_Movies, ImageID(#Img_Movies))
 SetGadgetState(#G_IG_Main_Pictures, ImageID(#Img_Pictures))
 SetGadgetState(#G_IG_Main_Search, ImageID(#Img_Search))
 SetGadgetState(#G_IG_Main_Preferences, ImageID(#Img_Preferences))
 SetGadgetState(#G_IG_Main_Misc, ImageID(#Img_Misc))
 SetGadgetState(#G_IG_Main_End, ImageID(#Img_End))
 RefreshPercentBar()
 AppMenu_Redraw()
EndMacro

;Erneuert die Prozentanzeige für Speicherplatz
Procedure RefreshPercentBar()
 Protected Space_Free.q, Space_Used.q, Space_Max.q, Space_Percent.b, Space_String.s, x.l

 Space_Free = GetDiskSpace_Free(DriveLeter())
 Space_Max  = GetDiskSpace_Max(DriveLeter())
 Space_Used = Space_Max - Space_Free
 
 If B_ShowSpace = 0 ;Freier Speicher
  Space_Percent = Space_Free * 100 / Space_Max
 Else               ;Belegter Speicher
  Space_Percent = Space_Used * 100 / Space_Max
 EndIf
 If B_ShowSpaceType = 0 ;In Prozent
  Space_String = Str(Space_Percent) + "%"
 Else                   ;In Speicher
  If B_ShowSpace = 0
   Space_String = FormatByteSize(Space_Free)
  Else
   Space_String = FormatByteSize(Space_Used)
  EndIf
 EndIf

 If Space_Percent < 0: Space_Percent = 0: EndIf
 If Space_Percent > 100: Space_Percent = 100: EndIf

 If IsImage(#Img_PercentDraw) = #False
  CreateImage(#Img_PercentDraw, ImageWidth(#Img_PercentBack), ImageHeight(#Img_PercentBack))
 EndIf
 StartDrawing(ImageOutput(#Img_PercentDraw))
  DrawImage(ImageID(#Img_PercentBack), 0, 0)
  For x = 0 To Space_Percent - 1
   DrawImage(ImageID(#Img_PercentBar),1 + x, 1)
  Next
  DrawingMode(#PB_2DDrawing_Transparent)
  DrawingFont(Font(2)\hFnt)
  DrawText(51 - TextWidth(Space_String)/2, 8 - TextHeight(Space_String)/2, Space_String, Font(2)\Color)
 StopDrawing()
 
 SetGadgetState(#G_IG_Main_Percent, ImageID(#Img_PercentDraw))
EndProcedure

;Global, Convertiert einen String für Pathangaben
Procedure.s ConvertString(Path$)
 Path$ = ReplaceString(Path$, "%usbdrive%", DriveLeter(), 1)
 Path$ = ReplaceString(Path$, "%exedir%",   ExePath(), 1)
 Path$ = ReplaceString(Path$, "%windir%",   WindowPath(), 1)
 Path$ = ReplaceString(Path$, "%sysdir%",   SystemPath(), 1)
 Path$ = ReplaceString(Path$, "%tempdir%",  GetTemporaryDirectory(), 1)
 Path$ = ReplaceString(Path$, "%homedir%",  GetHomeDirectory(), 1)
 Path$ = ReplaceString(Path$, "%username%", UserName(), 1)
 ProcedureReturn Path$
EndProcedure

;Interface, Setzt die Schriftart des Interface neu
Procedure Interface_RefreshFonts(FontID1)
 ;Preferences_Main
 SetGadgetFont(#G_TR_Preferences_Categorie, FontID1)
 SetGadgetFont(#G_TX_Preferences_FastHelp, FontID1)
 ;Preferences_Programms
 SetGadgetFont(#G_TR_Preferences_Programs_List, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_Name, FontID1)
 SetGadgetFont(#G_SR_Preferences_Programs_Name, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_Path, FontID1)
 SetGadgetFont(#G_SR_Preferences_Programs_Path, FontID1)
 SetGadgetFont(#G_BN_Preferences_Programs_Path, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_Parameter, FontID1)
 SetGadgetFont(#G_SR_Preferences_Programs_Parameter, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_Icon, FontID1)
 SetGadgetFont(#G_SR_Preferences_Programs_Icon, FontID1)
 SetGadgetFont(#G_BN_Preferences_Programs_Icon, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_WorkPath, FontID1)
 SetGadgetFont(#G_SR_Preferences_Programs_WorkPath, FontID1)
 SetGadgetFont(#G_BN_Preferences_Programs_WorkPath, FontID1)
 SetGadgetFont(#G_TX_Preferences_Programs_StartType, FontID1)
 SetGadgetFont(#G_CB_Preferences_Programs_StartType, FontID1)
 SetGadgetFont(#G_CB_Preferences_Programs_AutoStart, FontID1)
 ;Preferences_Starting
 SetGadgetFont(#G_CH_Preferences_Starting_ShowAtStart, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_CheckVersion, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_OSTest, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_CheckApps, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_SafetycopyPrefs, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_SafetycopyType1, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_SafetycopyType2, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_SafetycopyType3, FontID1)
 SetGadgetFont(#G_FR_Preferences_Starting_Wallpaper, FontID1)
 SetGadgetFont(#G_CH_Preferences_Starting_WallpaperChange, FontID1)
 SetGadgetFont(#G_SR_Preferences_Starting_Wallpaper, FontID1)
 SetGadgetFont(#G_BN_Preferences_Starting_Wallpaper, FontID1)
 ;Preferences_Interface
 SetGadgetFont(#G_TX_Preferences_Interface_Language, FontID1)
 SetGadgetFont(#G_CB_Preferences_Interface_Language, FontID1)
 SetGadgetFont(#G_TX_Preferences_Interface_Position, FontID1)
 SetGadgetFont(#G_CB_Preferences_Interface_Position, FontID1)
 SetGadgetFont(#G_TX_Preferences_Interface_Distance, FontID1)
 SetGadgetFont(#G_TX_Preferences_Interface_DistanceAmount, FontID1)
 SetGadgetFont(#G_CH_Preferences_Interface_Fading, FontID1)
 SetGadgetFont(#G_CH_Preferences_Interface_AlwaysOnTop, FontID1)
 SetGadgetFont(#G_TX_Preferences_Interface_SystrayIcon, FontID1)
 SetGadgetFont(#G_CH_Preferences_Interface_SkinSystrayIcon, FontID1)
 SetGadgetFont(#G_FR_Preferences_Interface_Space, FontID1)
 SetGadgetFont(#G_OP_Preferences_Interface_ShwFreeSpace, FontID1)
 SetGadgetFont(#G_OP_Preferences_Interface_ShwUsedSpace, FontID1)
 SetGadgetFont(#G_OP_Preferences_Interface_ShwPercent, FontID1)
 SetGadgetFont(#G_OP_Preferences_Interface_ShwSpace, FontID1)
 ;Preferences_Menu
 SetGadgetFont(#G_TR_Preferences_Categorie, FontID1)
 SetGadgetFont(#G_FR_Preferences_Menu_TAdjust, FontID1)
 SetGadgetFont(#G_OP_Preferences_Menu_TAdjustLeft, FontID1)
 SetGadgetFont(#G_OP_Preferences_Menu_TAdjustCenter, FontID1)
 SetGadgetFont(#G_OP_Preferences_Menu_TAdjustRight, FontID1)
 SetGadgetFont(#G_CH_Preferences_Menu_ShwIcons, FontID1)
 SetGadgetFont(#G_TX_Preferences_Menu_DistanceBorder, FontID1)
 SetGadgetFont(#G_TX_Preferences_Menu_DistanceIcnTxt, FontID1)
 ;Preferences_Skin
 SetGadgetFont(#G_TX_Preferences_Skin_List, FontID1)
 SetGadgetFont(#G_CB_Preferences_Skin_List, FontID1)
 SetGadgetFont(#G_TX_Preferences_Skin_Name, FontID1)
 SetGadgetFont(#G_SR_Preferences_Skin_Name, FontID1)
 SetGadgetFont(#G_TX_Preferences_Skin_Version, FontID1)
 SetGadgetFont(#G_SR_Preferences_Skin_Version, FontID1)
 SetGadgetFont(#G_TX_Preferences_Skin_Autor, FontID1)
 SetGadgetFont(#G_SR_Preferences_Skin_Autor, FontID1)
 SetGadgetFont(#G_TX_Preferences_Skin_Homepage, FontID1)
 SetGadgetFont(#G_SR_Preferences_Skin_Homepage, FontID1)
 SetGadgetFont(#G_TX_Preferences_Skin_Preview, FontID1)
 ;Preferences_Fonts
 SetGadgetFont(#G_TX_Preferences_Fonts_Title, FontID1)
 SetGadgetFont(#G_LI_Preferences_Fonts_List, FontID1)
 ;Preferences_Hotkeys
 SetGadgetFont(#G_TX_Preferences_Shortcuts_Title, FontID1)
 SetGadgetFont(#G_LI_Preferences_Shortcuts_List, FontID1)
 SetGadgetFont(#G_CH_Preferences_Shortcuts_Strg, FontID1)
 SetGadgetFont(#G_CH_Preferences_Shortcuts_Alt, FontID1)
 SetGadgetFont(#G_CH_Preferences_Shortcuts_Shift, FontID1)
 SetGadgetFont(#G_CB_Preferences_Shortcuts_Hotkey, FontID1)
 ;Preferences_Folder
 SetGadgetFont(#G_TX_Preferences_Folder_OwnFiles, FontID1)
 SetGadgetFont(#G_SR_Preferences_Folder_FolderOwnFiles, FontID1)
 SetGadgetFont(#G_BN_Preferences_Folder_OwnFilesChangeFolder, FontID1)
 SetGadgetFont(#G_CH_Preferences_Folder_MaximizeOwnFiles, FontID1)
 SetGadgetFont(#G_TX_Preferences_Folder_OwnFilesFolderName, FontID1)
 SetGadgetFont(#G_LI_Preferences_Folder_OwnFilesFolderName, FontID1)
 SetGadgetFont(#G_TX_Preferences_Folder_BrowserStartPage, FontID1)
 SetGadgetFont(#G_SR_Preferences_Folder_BrowserStartPage, FontID1)
 SetGadgetFont(#G_CH_Preferences_Folder_BrowserStartPage, FontID1)
 ;Information
 SetGadgetFont(#G_TX_Information_AutorName, FontID1)
 SetGadgetFont(#G_TX_Information_AutorMail, FontID1)
 SetGadgetFont(#G_TX_Information_AutorPage, FontID1)
 SetGadgetFont(#G_SR_Information_MiscInfos, FontID1)
 ;Update
 SetGadgetFont(#G_TX_Update_Version_Use, FontID1)
 SetGadgetFont(#G_TX_Update_Version_UseV, FontID1)
 SetGadgetFont(#G_TX_Update_Version_Newest, FontID1)
 SetGadgetFont(#G_TX_Update_Version_NewestV, FontID1)
 ;SkinCreator
 SetGadgetFont(#G_TX_SkinCreator_ResPath, FontID1)
 SetGadgetFont(#G_SR_SkinCreator_ResPath, FontID1)
 SetGadgetFont(#G_BN_SkinCreator_ResPath, FontID1)
 SetGadgetFont(#G_TX_SkinCreator_SkinPath, FontID1)
 SetGadgetFont(#G_SR_SkinCreator_SkinPath, FontID1)
 SetGadgetFont(#G_BN_SkinCreator_SkinPath, FontID1)
 SetGadgetFont(#G_LI_SkinCreator_Preferences, FontID1)
 SetGadgetFont(#G_CH_SkinCreator_ShwLog, FontID1)
 SetGadgetFont(#G_BN_SkinCreator_Cancel, FontID1)
 SetGadgetFont(#G_BN_SkinCreator_Create, FontID1)
 SetGadgetFont(#G_LV_SkinCreator_Log, FontID1)
 ;Autorun
 SetGadgetFont(#G_TX_Autorun_Description, FontID1)
 SetGadgetFont(#G_TX_Autorun_DriveName, FontID1)
 SetGadgetFont(#G_SR_Autorun_DriveName, FontID1)
 SetGadgetFont(#G_TX_Autorun_DriveIcon, FontID1)
 SetGadgetFont(#G_SR_Autorun_DriveIcon, FontID1)
 SetGadgetFont(#G_BN_Autorun_DriveIcon, FontID1)
 SetGadgetFont(#G_CH_Autorun_DoubleClick, FontID1)
 SetGadgetFont(#G_CH_Autorun_KontextEntry, FontID1)
 SetGadgetFont(#G_SR_Autorun_Preview, FontID1)
 SetGadgetFont(#G_BN_Autorun_Remove, FontID1)
 SetGadgetFont(#G_BN_Autorun_Copy, FontID1)
EndProcedure

;Interface, Aktualisiert das EigeneDateien Menü
Procedure Interface_RefreshMenuOwnFiles()
 Protected DirID.l, DirEntry.s

 L_OwnFilesMenuCounter = 0
 
 If IsMenu(#Menu_PopUp_OwnFiles)
  FreeMenu(#Menu_PopUp_OwnFiles)
 EndIf
 
 DirID = ExamineDirectory(#PB_Any, DriveLeter() + S_OwnFiles, "*.*")
 If DirID <> 0
  If CreatePopupMenu(#Menu_PopUp_OwnFiles) <> #False
   While NextDirectoryEntry(DirID) <> 0
    If DirectoryEntryType(DirID) = #PB_DirectoryEntry_Directory
     DirEntry = DirectoryEntryName(DirID)
     If DirEntry <> "." And DirEntry <> ".." And DirEntry <> S_Documents And DirEntry <> S_Music And DirEntry <> S_Pictures And DirEntry <> S_Movies
      L_OwnFilesMenuCounter + 1
      MenuItem(#Mnu_OwnFilesStart + L_OwnFilesMenuCounter, DirectoryEntryName(DirID))
     EndIf
    EndIf
   Wend
   FinishDirectory(DirID)
  Else
   MsgBox_Error(Language_GetString("MsgErr_PopUpMenu") + " 'OwnFiles'"): ProcedureReturn #False
  EndIf
 EndIf
EndProcedure

;Interface, extrahiert alle verfügbaren Systray icons aus der Icon Libary
Procedure Interface_RefreshSysTrayLib(Path$)
 
 If FileSize(Path$) > 0
  Global hImgList.l = ImageList_LoadImage_(#Null, @Path$, 16, #Null, #CLR_DEFAULT, #IMAGE_BITMAP, #LR_CREATEDIBSECTION|#LR_LOADFROMFILE)
  
  If hImgList <> 0
   Protected IcnAmount.l = ImageList_GetImageCount_(hImgList)
   Protected x.l
   
   For x = 0 To IcnAmount - 1
    AddElement(hSysTrayIcn())
    hSysTrayIcn() = ImageList_GetIcon_(hImgList, x, #Null)
   Next
   
   ProcedureReturn ListSize(hSysTrayIcn())
  Else
   MsgBox_Error(Language_GetString("MsgErr_InvalidSysTrayILib") + #CRLF$ +  "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
   ProcedureReturn 0
  EndIf
 Else
  MsgBox_Error(Language_GetString("MsgErr_NoSysTrayILib") + #CRLF$ + "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
  ProcedureReturn 0
 EndIf

; !! With Vista no more Suport for ExtractIconEx_() !!
;  Protected IcnAmount.l, x.l, hIcn.l
;  
;  If FileSize(Path$) > 0
;   IcnAmount = ExtractIconEx_(@path$, -1, #Null, #Null, #Null)
;   If IcnAmount > 0
;  
;    For x = 0 To IcnAmount - 1
;     If ExtractIconEx_(@path$, x, #Null, @hIcn, 1) <> 0
;      AddElement(hSysTrayIcn())
;      hSysTrayIcn() = hIcn
;     EndIf
;    Next
;    
;    ProcedureReturn ListSize(hSysTrayIcn())
;   Else
;    MsgBox_Error(Language_GetString("MsgErr_InvalidSysTrayILib") + #CRLF$ +  "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
;    ProcedureReturn 0
;   EndIf
;  Else
;   MsgBox_Error(Language_GetString("MsgErr_NoSysTrayILib") + #CRLF$ + "'" + ExePath() + "Launcher\" + #S_FileSysTrayLib + "'")
;   ProcedureReturn 0
;  EndIf
EndProcedure

;Application Menu, neuzeichnen
Procedure AppMenu_Redraw()
 Protected FntH.l, FntW.l, x.l, hIcn.l, PrgN.s, NPosX.l
 
 For x = 0 To 19
  If ListSize(Application()) -1 >= x + L_ScrollMenu
   SelectElement(Application(), x + L_ScrollMenu)
   PrgN = Application()\Name
   hIcn = Application()\IcnID
  Else
   PrgN = ""
   hIcn = 0
  EndIf
  
  ;Normale Images
  If IsImage(MnuImage(x)\Normal) = 0: MnuImage(x)\Normal = CreateImage(#PB_Any, 250, 24): EndIf
  If StartDrawing(ImageOutput(MnuImage(x)\Normal))
    DrawImage(ImageID(#Img_Menu_Start + x), 0, 0)
    If hIcn <> 0 And PrgN <> ""
     DrawingFont(Font(0)\hFnt)
     DrawingMode(#PB_2DDrawing_Transparent)
     FntH = TextHeight("ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")
     FntW = TextWidth(Application()\Name)
     
     If B_AdjustMnu = 0
      If B_ShwIcons = 1
       NPosX = B_DistBorder + 16 + B_DistIcnTxt
      Else
       NPosX = B_DistBorder
      EndIf
     EndIf
     
     If B_AdjustMnu = 1
      NPosX = 250 - FntW
      If B_ShwIcons = 1: NPosX + B_DistBorder + 16 + B_DistIcnTxt: EndIf
      NPosX / 2
     EndIf
     
     If B_AdjustMnu = 2
      NPosX = 250 - FntW - B_DistBorder
     EndIf
     
     If B_ShwIcons = 1: DrawImage(Application()\IcnID, B_DistBorder, 4): EndIf
     DrawText(NPosX, (24 - FntH)/2, Application()\Name, Font(0)\Color)
    EndIf
   StopDrawing()
  EndIf
  
  ;Over Images
  If IsImage(MnuImage(x)\Over) = 0: MnuImage(x)\Over = CreateImage(#PB_Any, 250, 24): EndIf
  If StartDrawing(ImageOutput(MnuImage(x)\Over))
    DrawImage(ImageID(#Img_Menu_Start + x + 20), 0, 0)
    If hIcn <> 0 And PrgN <> ""
     DrawingFont(Font(1)\hFnt)
     DrawingMode(#PB_2DDrawing_Transparent)
     FntH = TextHeight("ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")
     FntW = TextWidth(Application()\Name)
     
     If B_ShwIcons = 1: DrawImage(Application()\IcnID, B_DistBorder, 4): EndIf
     DrawText(NPosX, (24 - FntH)/2, Application()\Name, Font(1)\Color)
    EndIf
   StopDrawing()
  EndIf
  
  ;Refresh
  If IsImage(MnuImage(x)\Normal) <> 0: SetGadgetState(#G_IG_Main_MnuStart + x, ImageID(MnuImage(x)\Normal)): EndIf
 Next
EndProcedure

;Application Menu, hochscrollen
Procedure AppMenu_Up()
 If L_ScrollMenu > 0
  L_ScrollMenu - 1
  AppMenu_Redraw()
 EndIf
EndProcedure

;Application Menu, runterscrollen
Procedure AppMenu_Down()
 If 20 + L_ScrollMenu < ListSize(Application())
  L_ScrollMenu + 1
  AppMenu_Redraw()
 EndIf
EndProcedure

;Skin, Blendet Logbereich ein/aus
Procedure Skin_ShwLog(Move = 1)
 B_ShwSkinCLog = GetGadgetState(#G_CH_SkinCreator_ShwLog)
 If B_ShwSkinCLog = 1
  HideGadget(#G_LV_SkinCreator_Log, #False)
  ResizeWindow(#Win_SkinCreator, #PB_Ignore, #PB_Ignore, #PB_Ignore, 390)
 Else
  HideGadget(#G_LV_SkinCreator_Log, #True)
  ResizeWindow(#Win_SkinCreator, #PB_Ignore, #PB_Ignore, #PB_Ignore, 265)
 EndIf
 If Move = 1: Window_Snap(#Win_SkinCreator, B_WindowPosition, B_Gap): EndIf
EndProcedure

;Skin, überprüft ob alle Skineingaben korekt sind
Procedure Skin_CheckSkinCreateState()
 Protected Bool.l, x.l
 
 If GetGadgetText(#G_SR_SkinCreator_ResPath) = "":                 Bool = 1: EndIf ;Ressourcepath
 If GetGadgetText(#G_SR_SkinCreator_SkinPath) = "":                Bool = 1: EndIf ;Skinpath
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, 1) = "":   Bool = 1: EndIf ;Name
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 1, 1) = "":   Bool = 1: EndIf ;Autor
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 2, 1) = "":   Bool = 1: EndIf ;Version
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 3, 1) = "":   Bool = 1: EndIf ;Homepage
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 4, 1) = "":   Bool = 1: EndIf ;Textfarbe Normal
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 5, 1) = "":   Bool = 1: EndIf ;Textfarbe Maus
 
 DisableGadget(#G_BN_SkinCreator_Create, Bool)
 
 ProcedureReturn Bool
EndProcedure

;Skin, initialisiert das SkinCreator Fenster
Procedure Skin_InitWindow(LogChange = 1, Clear = 1)
 Protected x.l
 SetGadgetText(#G_SR_SkinCreator_ResPath, "")
 SetGadgetText(#G_SR_SkinCreator_SkinPath, "")
 For x = 0 To 3: SetGadgetItemText(#G_LI_SkinCreator_Preferences, x, "", 1): Next
 For x = 4 To 5
  SetGadgetItemText(#G_LI_SkinCreator_Preferences, x, "$000000", 1)
  SetGadgetItemColor(#G_LI_SkinCreator_Preferences, x, #PB_Gadget_BackColor, 0, 1)
  SetGadgetItemColor(#G_LI_SkinCreator_Preferences, x, #PB_Gadget_FrontColor, InvertColor(0), 1) 
 Next
 If Clear = 1: ClearGadgetItems(#G_LV_SkinCreator_Log): EndIf
 SetGadgetState(#G_LI_SkinCreator_Preferences, -1)
 If LogChange = 1
  SetGadgetState(#G_CH_SkinCreator_ShwLog, B_ShwSkinCLog): Skin_ShwLog()
 EndIf
 Skin_CheckSkinCreateState()
EndProcedure

;Skin, verändert den Ressourcepath des neuen Skin
Procedure Skin_ChangeRessPath()
 Protected Path.s
 
 Path = PathRequester(#PrgName, ExePath() + #S_Folder + #S_FolderSkin)
 If Path <> ""
  SetGadgetText(#G_SR_SkinCreator_ResPath, Path)
  Skin_CheckSkinCreateState()
 EndIf
EndProcedure

;Skin, verändert den Speicherpath des neuen Skin
Procedure Skin_ChangeSkinPath()
 Protected Path.s, File.s
 
 If GetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, 1) <> ""
  File = GetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, 1) + ".skn"
 Else
  File = #S_DefNewSkin
 EndIf
 
 Path = SaveFileRequester(#PrgName, ExePath() + #S_Folder + #S_FolderSkin + File, "Skin|*.skn|Alle Dateien|*.*", 0)
 If Path <> ""
  If SelectedFilePattern() = 0 And GetExtensionPart(Path) = ""
   Path + ".skn"
  EndIf
  SetGadgetText(#G_SR_SkinCreator_SkinPath, Path)
  Skin_CheckSkinCreateState()
 EndIf
EndProcedure

;Skin, verändern der Eingaben
Procedure Skin_ChangeData()
 Protected Sel.l, SResult.s, CResult.l
 
 Sel = GetGadgetState(#G_LI_SkinCreator_Preferences)
 If Sel <> -1
  Select Sel
   Case 0 To 3 ;Name, Autor, Version, Homepage
    SResult = InputRequester(#PrgName, GetGadgetItemText(#G_LI_SkinCreator_Preferences, Sel, 0), GetGadgetItemText(#G_LI_SkinCreator_Preferences, Sel, 1))
    If SResult <> ""
     Select Sel
      Case 0
       SetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, Left(SResult, #Len_Name), 1)
      Case 1
       SetGadgetItemText(#G_LI_SkinCreator_Preferences, 1, Left(SResult, #Len_Autor), 1)
      Case 2
       SResult = RemoveString(SResult, ".")
       SResult = RemoveString(SResult, ",")
       SetGadgetItemText(#G_LI_SkinCreator_Preferences, 2, Left(Str(Val(SResult)), #Len_Version), 1)
      Case 3
       SetGadgetItemText(#G_LI_SkinCreator_Preferences, 3, Left(SResult, #Len_Homepage), 1)
     EndSelect
    EndIf
   Case 4, 5 ;Farben
    CResult = ColorRequester(GetGadgetItemColor(#G_LI_SkinCreator_Preferences, Sel, #PB_Gadget_BackColor, 1))
    If CResult <> -1
     SetGadgetItemColor(#G_LI_SkinCreator_Preferences, Sel, #PB_Gadget_BackColor, CResult, 1)
     SetGadgetItemColor(#G_LI_SkinCreator_Preferences, Sel, #PB_Gadget_FrontColor, InvertColor(CResult), 1)
     SetGadgetItemText(#G_LI_SkinCreator_Preferences, Sel, LSet("$" + Hex(CResult), 7, "0"), 1)
    EndIf
  EndSelect
  Skin_CheckSkinCreateState()
 EndIf
EndProcedure

;Skin, fügt einen Log-Kommentar hinzu
Macro Skin_AddLog(Text)
 AddGadgetItem(#G_LV_SkinCreator_Log, -1, Text)
 SetGadgetState(#G_LV_SkinCreator_Log, CountGadgetItems(#G_LV_SkinCreator_Log) - 1)
 While WindowEvent()
  If EventGadget() = #G_BN_SkinCreator_Cancel: B_CancelCreateSkin = 1: EndIf
 Wend
 If B_CancelCreateSkin = 1
  AddGadgetItem(#G_LV_SkinCreator_Log, -1, Language_GetString("MsgSkn_Cancel")): SetGadgetState(#G_LV_SkinCreator_Log, CountGadgetItems(#G_LV_SkinCreator_Log) - 1)
  DisableGadget(#G_BN_SkinCreator_Create, #False): B_CancelCreateSkin = 0: ProcedureReturn 0
 EndIf
EndMacro

;Skin, erstellen eines Skines
Procedure Skin_Create()
 Protected hFile.l, hImg.l, Path_Ressource.s, Path_Skin.s, x.l

 Path_Ressource = GetGadgetText(#G_SR_SkinCreator_ResPath)
 Path_Skin      = GetGadgetText(#G_SR_SkinCreator_SkinPath)

 If FileSize(Path_Ressource) <> -2
  Skin_AddLog(Language_GetString("MsgErr_WrongSkinRessPath")): ProcedureReturn 0
 Else
  ;Überschreiben
  If FileSize(Path_Skin) > 0
   If MessageRequester(#PrgName, Language_GetString("MsgErr_OverwriteFile"), #MB_ICONQUESTION|#MB_YESNO) = #IDNO: ProcedureReturn 0: EndIf
  EndIf
  
  DisableGadget(#G_BN_SkinCreator_Create, #True)
  ClearGadgetItems(#G_LV_SkinCreator_Log)
  
  ;Archiv erstellen
  If CreatePack(Path_Skin) = #False
   Skin_AddLog(Language_GetString("MsgErr_CreateSkinRess")): DisableGadget(#G_BN_SkinCreator_Create, #False): ProcedureReturn 0
  Else
   ;Dateien hinzufügen
   For x = 0 To #DIM_SknFl
    Skin_AddLog("Hinzufügen: " + SknFL(x)\Path)
    If FileSize(Path_Ressource + SknFL(x)\Path) < 0
     Skin_AddLog(Language_GetString("MsgErr_MissingSkinFile")): DisableGadget(#G_BN_SkinCreator_Create, #False): ProcedureReturn 0
    Else
     ;Image überprüfen
     hImg = LoadImage(#PB_Any, Path_Ressource + SknFL(x)\Path)
     If hImg <> 0
      If ImageWidth(hImg) <> SknFL(x)\ImgW Or ImageHeight(hImg) <> SknFL(x)\ImgH
       FreeImage(hImg)
       Skin_AddLog(Language_GetString("MsgErr_WrongSkinImage")): DisableGadget(#G_BN_SkinCreator_Create, #False): ProcedureReturn 0
      EndIf
     Else
      Skin_AddLog(Language_GetString("MsgErr_WrongSkinImage")): DisableGadget(#G_BN_SkinCreator_Create, #False): ProcedureReturn 0
     EndIf
     ;Zum Archiv hinzufügen
     AddPackFile(Path_Ressource + SknFL(x)\Path, 9)
    EndIf
   Next
   ClosePack()
  EndIf
  
  ;Header schreiben 
  hFile = OpenFile(#PB_Any, Path_Skin)
  If hFile <> 0
   Skin_AddLog(Language_GetString("MsgSkn_Header"))
   FileSeek(hFile, Lof(hFile))
   WriteString(hFile, #S_TestSkin)
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, 1)), #Len_Name, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_SkinCreator_Preferences, 1, 1)), #Len_Autor, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_SkinCreator_Preferences, 2, 1)), #Len_Version, " "))
   WriteString(hFile, LSet(Trim(GetGadgetItemText(#G_LI_SkinCreator_Preferences, 3, 1)), #Len_Homepage, " "))
   WriteLong(hFile, GetGadgetItemColor(#G_LI_SkinCreator_Preferences, 4, #PB_Gadget_BackColor, 1))
   WriteLong(hFile, GetGadgetItemColor(#G_LI_SkinCreator_Preferences, 5, #PB_Gadget_BackColor, 1))
   CloseFile(hFile)
  Else
   Skin_AddLog(Language_GetString("MsgErr_Header"))
   DisableGadget(#G_BN_SkinCreator_Create, #False): ProcedureReturn 0
  EndIf
  
  Skin_AddLog(Language_GetString("MsgSkn_Createt"))
  MessageBeep_(#MB_ICONINFORMATION)
  Skin_InitWindow(0, 0)
  ProcedureReturn 1
 EndIf
EndProcedure

;Skin, Entpackt und lädt eine Grafik aus dem Skin
Procedure Skin_NextImage(Image, NextPackFile)
 If NextPackFile <> 0
  If IsImage(Image) <> 0: FreeImage(Image): EndIf
  If CatchImage(Image, NextPackFile) = #False
   MsgBox_Error(Language_GetString("MsgErr_InvalidSkinImage"))
   End
  EndIf
 Else
  MsgBox_Error(Language_GetString("MsgErr_MissingSkinImage") + " " + Str(Image))
  End
 EndIf
EndProcedure

;Skin, Informationen auslesen
Procedure Skin_RefreshInformation(Reset = 0)
 Static LSkin.s
 Protected SkinName.s, SkinPath.s, hFile.l, Header_Mem.l, Header_Len.l, InfoName.s, InfoAutor.s, InfoVersion.l, InfoHomepage.s, InfoColor1.l, InfoColor2.l

 If Reset = 1: LSkin = "": EndIf
 
 SkinName = GetGadgetText(#G_CB_Preferences_Skin_List)
 SkinPath = ExePath() + #S_Folder + #S_FolderSkin + SkinName
 
 If LSkin <> SkinName And GetGadgetState(#G_CB_Preferences_Skin_List) <> -1
  LSkin = SkinName
  hFile = ReadFile(#PB_Any, SkinPath)
  If hFile <> #False
   Header_Len = Len(#S_TestSkin) + #Len_Name + #Len_Autor + #Len_Version + #Len_Homepage + #Len_Colors
   Header_Mem = AllocateMemory(Header_Len)
   FileSeek(hFile, Lof(hFile) - Header_Len)
   ReadData(hFile, Header_Mem, Header_Len)
   If PeekS(Header_Mem, Len(#S_TestSkin)) = #S_TestSkin
    InfoName     = Trim(PeekS(Header_Mem + Len(#S_TestSkin), #Len_Name))
    InfoAutor    = Trim(PeekS(Header_Mem + Len(#S_TestSkin) + #Len_Name, #Len_Autor))
    InfoVersion  = Val(Trim(PeekS(Header_Mem + Len(#S_TestSkin) + #Len_Name + #Len_Autor, #Len_Version)))
    InfoHomepage = Trim(PeekS(Header_Mem + Len(#S_TestSkin) + #Len_Name + #Len_Autor + #Len_Version, #Len_Homepage))
    InfoColor1   = PeekL(Header_Mem + Len(#S_TestSkin) + #Len_Name + #Len_Autor + #Len_Version + #Len_Homepage)
    InfoColor2   = PeekL(Header_Mem + Len(#S_TestSkin) + #Len_Name + #Len_Autor + #Len_Version + #Len_Homepage + #Len_Colors/2)
    CloseFile(hFile)
    FreeMemory(Header_Mem)
    If OpenPack(SkinPath)
     If IsImage(#Img_Preview) <> 0: FreeImage(#Img_Preview): EndIf
     If CatchImage(#Img_Preview, NextPackFile()) <> 0
      SetGadgetText(#G_SR_Preferences_Skin_Name, InfoName)
      SetGadgetText(#G_SR_Preferences_Skin_Autor, InfoAutor)
      SetGadgetText(#G_SR_Preferences_Skin_Version, StrF(InfoVersion/100, 2))
      SetGadgetText(#G_SR_Preferences_Skin_Homepage, InfoHomepage)
      SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 0, #PB_Gadget_BackColor, InfoColor1, 4)
      SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 0, #PB_Gadget_FrontColor, InvertColor(InfoColor1), 4)
      SetGadgetItemText(#G_LI_Preferences_Fonts_List, 0, LSet( "#" + Hex(InfoColor1), 7, "0"), 4)
      SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 1, #PB_Gadget_BackColor, InfoColor2, 4)
      SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 1, #PB_Gadget_FrontColor, InvertColor(InfoColor2), 4)
      SetGadgetItemText(#G_LI_Preferences_Fonts_List, 1, LSet( "#" + Hex(InfoColor2), 7, "0"), 4)
      SetGadgetState(#G_IG_Preferences_Skin_Preview, ImageID(#Img_Preview))
      ClosePack()
      ProcedureReturn 1
     EndIf
    EndIf
   Else
    CloseFile(hFile)
    FreeMemory(Header_Mem)
   EndIf
  EndIf
  SetGadgetText(#G_SR_Preferences_Skin_Name, Language_GetString("MsgErr_InvalidSkin"))
  SetGadgetText(#G_SR_Preferences_Skin_Autor, "")
  SetGadgetText(#G_SR_Preferences_Skin_Version, "")
  SetGadgetText(#G_SR_Preferences_Skin_Homepage, "")
  SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 0, #PB_Gadget_BackColor, Font(0)\Color, 4)
  SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 0, #PB_Gadget_FrontColor, InvertColor(Font(0)\Color), 4)
  SetGadgetItemText(#G_LI_Preferences_Fonts_List, 0, LSet( "#" + Hex(Font(0)\Color), 7, "0"), 4)
  SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 1, #PB_Gadget_BackColor, Font(1)\Color, 4)
  SetGadgetItemColor(#G_LI_Preferences_Fonts_List, 1, #PB_Gadget_FrontColor, InvertColor(Font(1)\Color), 4)
  SetGadgetItemText(#G_LI_Preferences_Fonts_List, 1, LSet( "#" + Hex(Font(1)\Color), 7, "0"), 4)
  HideGadget(#G_TX_Preferences_Skin_Preview, #True)
  SetGadgetState(#G_IG_Preferences_Skin_Preview, 0)
 EndIf
EndProcedure

;Skin, verändert das Systray Icon
Procedure Skin_ChangeSysTrayIcon(hIcn)
 If IsSysTrayIcon(0) = 0
  AddSysTrayIcon(0, WindowID(#Win_Main), hIcn)
 Else
  ChangeSysTrayIcon(0, hIcn)
 EndIf
 SysTrayIconToolTip(0, #PrgName)
EndProcedure

;Skin, Öffnen
Procedure Skin_Load(Path$)
 Static lSkin.s
 Protected hFile.l, Header_Len.l, Header_Mem.l, x.l
 
 If Path$ <> lSkin And FileSize(Path$) > 0
  ;Header überprüfen
  hFile = ReadFile(#PB_Any, Path$)
  If hFile <> #False
   Header_Len = Len(#S_TestSkin) + #Len_Name + #Len_Autor + #Len_Version + #Len_Homepage + #Len_Colors
   Header_Mem = AllocateMemory(Header_Len)
   FileSeek(hFile, Lof(hFile) - Header_Len)
   ReadData(hFile, Header_Mem, Header_Len)
   If PeekS(Header_Mem, Len(#S_TestSkin)) <> #S_TestSkin
    CloseFile(hFile)
    FreeMemory(Header_Mem)
    ProcedureReturn 0
   EndIf
   FreeMemory(Header_Mem)
   CloseFile(hFile)
  Else
   ProcedureReturn 0
  EndIf
  
  ;Grafiken entpacken
  If OpenPack(Path$) <> #False
   NextPackFile() ;PreviewImage überspringen..
   ;SysTray Icon
   Skin_NextImage(#Icn_SysTray, NextPackFile())
   ;Fensterhintergrund
   If L_BackroundBrush <> 0: DeleteObject_(L_BackroundBrush): EndIf
   Skin_NextImage(#Img_Background, NextPackFile())
   L_BackroundBrush = Window_SetBackroundImage(#Win_Main, #Img_Background)
   If L_BackroundBrush = #False
    MsgBox_Error(Language_GetString("MsgErr_WindowBackground"))
    End
   EndIf
   ;Sonstiegs
   Skin_NextImage(#Img_Drive, NextPackFile())
   Skin_NextImage(#Img_Drive_Over, NextPackFile())
   Skin_NextImage(#Img_OwnFiles, NextPackFile())
   Skin_NextImage(#Img_OwnFiles_Over, NextPackFile())
   Skin_NextImage(#Img_Documents, NextPackFile())
   Skin_NextImage(#Img_Documents_Over, NextPackFile())
   Skin_NextImage(#Img_Music, NextPackFile())
   Skin_NextImage(#Img_Music_Over, NextPackFile())
   Skin_NextImage(#Img_Pictures, NextPackFile())
   Skin_NextImage(#Img_Pictures_Over, NextPackFile())
   Skin_NextImage(#Img_Movies, NextPackFile())
   Skin_NextImage(#Img_Movies_Over, NextPackFile())
   Skin_NextImage(#Img_Search, NextPackFile())
   Skin_NextImage(#Img_Search_Over, NextPackFile())
   Skin_NextImage(#Img_Preferences, NextPackFile())
   Skin_NextImage(#Img_Preferences_Over, NextPackFile())
   Skin_NextImage(#Img_Misc, NextPackFile())
   Skin_NextImage(#Img_Misc_Over, NextPackFile())
   Skin_NextImage(#Img_End, NextPackFile())
   Skin_NextImage(#Img_EndOver, NextPackFile())
   Skin_NextImage(#Img_PercentBack, NextPackFile())
   Skin_NextImage(#Img_PercentBar, NextPackFile())
   ;Menübilder
   For x = 0 To #Img_Menu_End - #Img_Menu_Start
    Skin_NextImage(#Img_Menu_Start + x, NextPackFile())
   Next
   lSkin = Path$
   ClosePack()
   RefreshWindow()
  EndIf
  ProcedureReturn 1
 EndIf
EndProcedure

;Sprache, Sprachdatei öffnen
Procedure Language_Load(Path$)
 Static LLanguage$
 Protected hFile.l, String$, x.l
 
 ;Standardwerte
 Restore Language
 For x = 0 To #DIM_Language
  Read.s Language(x)\Name
  Read.s Language(x)\Wert
 Next

 ;Sprachdatei öffnen
 If FileSize(Path$) > 0 And LLanguage$ <> Path$
  If OpenPreferences(Path$) <> #False
   PreferenceGroup("Language")
   For x = 0 To #DIM_Language
    String$ = ReadPreferenceString(Language(x)\Name, "")
    If String$ <> ""
     Language(x)\Wert = String$
    EndIf
   Next
   ClosePreferences()
  Else
   MsgBox_Error(Language_GetString("MsgErr_LoadLanguage") + #CRLF$ + "'" + Path$ + "'")
  EndIf
 EndIf
EndProcedure

;Sprache, String ermiteln
Procedure.s Language_GetString(Name$)
 Protected x.l, Result.s

 For x = 0 To #DIM_Language
  If Language(x)\Name = Name$
   Result = Language(x)\Wert
   
   Result = ReplaceString(Result, "|",    #CRLF$)
   Result = ReplaceString(Result, "#34",  Chr(34))
   Result = ReplaceString(Result, "#124", Chr(124))
   
   ProcedureReturn Result
  EndIf
 Next
 ProcedureReturn "n/a"
EndProcedure

;Sprache, aktuallisieren der Sprache
Procedure Language_Refresh()
 ;// WindowTitle
 SetWindowTitle(#Win_Hide,    Language_GetString("WinTle_Main"))
 SetWindowTitle(#Win_Main,        Language_GetString("WinTle_Main"))
 SetWindowTitle(#Win_Preferences, Language_GetString("WinTle_Preferences"))
 SetWindowTitle(#Win_Information, Language_GetString("WinTle_Informations"))
 SetWindowTitle(#Win_Update,      Language_GetString("WinTle_Update"))
 SetWindowTitle(#Win_SkinCreator, Language_GetString("WinTle_SkinCreator"))
 SetWindowTitle(#Win_Autostart,   Language_GetString("WinTle_Autorun"))
 SetWindowTitle(#Win_Error,       Language_GetString("WinTle_Error"))
 ;// Main PopUp Search
 SetMenuItemText(#Menu_PopUp_Search, #Mnu_SearchDrive, Language_GetString("MnuItm_Drive"))
 SetMenuItemText(#Menu_PopUp_Search, #Mnu_SearchFolder, Language_GetString("MnuItm_Folder"))
 SetMenuItemText(#Menu_PopUp_Search, #Mnu_SearchOwnFiles, Language_GetString("MnuItm_OwnFiles"))
 SetMenuItemText(#Menu_PopUp_Search, #Mnu_SearchComputer, Language_GetString("MnuItm_Computer"))
 SetMenuItemText(#Menu_PopUp_Search, #Mnu_SearchINET, Language_GetString("MnuItm_Internet"))
 ;// Main PopUp Programms
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgStartNormal, Language_GetString("MnuItm_Normal"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgStartMaximize, Language_GetString("MnuItm_Maximize"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgStartMinimize, Language_GetString("MnuItm_Minimize"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgPath, Language_GetString("MnuItm_OpenPrgFolder"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgPreferences, Language_GetString("MnuItm_Preferences"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgScrollUp, Language_GetString("Mnu_ScrollUp"))
 SetMenuItemText(#Menu_PopUp_Programs, #Mnu_PrgScrollDown, Language_GetString("Mnu_ScrollDown"))
 ;// Main PopUp Misc
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscHelp, Language_GetString("MnuItm_MiscHelp"))
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscWebsite, Language_GetString("MnuItm_MiscWebsite"))
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscUpdate, Language_GetString("MnuItm_MiscUpdate"))
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscSkinCreator, Language_GetString("MnuItm_MiscSkinCreator"))
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscAutorunCreator, Language_GetString("MnuItm_MiscAutorunCreator"))
 SetMenuItemText(#Menu_PopUp_Misc, #Mnu_MiscInformation, Language_GetString("MnuItm_MiscInformation"))
 ;// Main PopUp SysTray
 SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayShow, Language_GetString("MnuItm_SysTShow_1"))
 SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayPreferences, Language_GetString("MnuItm_SysTPref"))
 SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayUpdate, Language_GetString("MnuItm_SysTUpdate"))
 SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayAbout, Language_GetString("MnuItm_SysTAbout"))
 SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayEnd, Language_GetString("MnuItm_SysTEnd"))
 ;// Main Fonts
 SetMenuItemText(#Menu_PopUp_Fonts, #Mnu_FontsFont, Language_GetString("MnuFnt_Font"))
 SetMenuItemText(#Menu_PopUp_Fonts, #Mnu_FontsColor, Language_GetString("MnuFnt_Color"))
 ;// Preferences, Categorie
 SetGadgetItemText(#G_TR_Preferences_Categorie, 0, Language_GetString("PrfCtg_Programms"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 1, Language_GetString("PrfCtg_Starting"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 2, Language_GetString("PrfCtg_Interface"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 3, Language_GetString("PrfCtg_Skin"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 4, Language_GetString("PrfCtg_ProgrammsMenu"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 5, Language_GetString("PrfCtg_Fonts"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 6, Language_GetString("PrfCtg_Shortcuts"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 7, Language_GetString("PrfCtg_Folder"), 0)
 SetGadgetItemText(#G_TR_Preferences_Categorie, 8, Language_GetString("PrfCtg_Security"), 0)
 ;// Preferences Programms
 SetGadgetText(#G_TX_Preferences_Programs_Name, Language_GetString("PrfPrg_Name"))
 SetGadgetText(#G_TX_Preferences_Programs_Path, Language_GetString("PrfPrg_Program"))
 SetGadgetText(#G_BN_Preferences_Programs_Path, Language_GetString("PrfPrg_SearchPrg"))
 GadgetToolTipEx(#G_BN_Preferences_Programs_Path, Language_GetString("PrfPrg_SearcgPrgT"))
 SetGadgetText(#G_TX_Preferences_Programs_Parameter, Language_GetString("PrfPrg_Parameter"))
 SetGadgetText(#G_TX_Preferences_Programs_Icon, Language_GetString("PrfPrg_Icon"))
 SetGadgetText(#G_BN_Preferences_Programs_Icon, Language_GetString("PrfPrg_SearchIcon"))
 GadgetToolTipEx(#G_BN_Preferences_Programs_Icon, Language_GetString("PrfPrg_SearchIconT"))
 SetGadgetText(#G_TX_Preferences_Programs_WorkPath, Language_GetString("PrfPrg_WorkingDir"))
 SetGadgetText(#G_BN_Preferences_Programs_WorkPath, Language_GetString("PrfPrg_WorkingDirChange"))
 GadgetToolTipEx(#G_BN_Preferences_Programs_WorkPath, Language_GetString("PrfPrg_WorkingDirChangeT"))
 SetGadgetText(#G_TX_Preferences_Programs_StartType, Language_GetString("PrfPrg_StartType"))
 GadgetToolTipEx(#G_CB_Preferences_Programs_StartType, Language_GetString("PrfPrg_StartTypeT"))
 SetGadgetItemText(#G_CB_Preferences_Programs_StartType, 0, Language_GetString("PrfPrg_StartType_1"), 0)
 SetGadgetItemText(#G_CB_Preferences_Programs_StartType, 1, Language_GetString("PrfPrg_StartType_2"), 0)
 SetGadgetItemText(#G_CB_Preferences_Programs_StartType, 2, Language_GetString("PrfPrg_StartType_3"), 0)
 SetGadgetItemText(#G_CB_Preferences_Programs_StartType, 3, Language_GetString("PrfPrg_StartType_4"), 0)
 SetGadgetText(#G_CB_Preferences_Programs_AutoStart, Language_GetString("PrfPrg_AutoRun"))
 GadgetToolTipEx(#G_CB_Preferences_Programs_AutoStart, Language_GetString("PrfPrg_AutoRunT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Up, Language_GetString("PrfPrg_PrgUpT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Down, Language_GetString("PrfPrg_PrgDownT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Sort, Language_GetString("PrfPrg_PrgSortT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Add, Language_GetString("PrfPrg_PrgAddT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Del, Language_GetString("PrfPrg_PrgDelT"))
 GadgetToolTipEx(#G_BI_Preferences_Programs_Warning, Language_GetString("PrfPrg_PrgWrongT"))
 ;// Preferences Starting
 SetGadgetText(#G_CH_Preferences_Starting_ShowAtStart, Language_GetString("PrfStg_OpenAtStart"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_ShowAtStart, Language_GetString("PrfStg_OpenAtStartT"))
 SetGadgetText(#G_CH_Preferences_Starting_CheckVersion, Language_GetString("PrfStg_CheckVersion"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_CheckVersion, Language_GetString("PrfStg_CheckVersionT"))
 SetGadgetText(#G_CH_Preferences_Starting_OSTest, Language_GetString("PrfStg_OSTest"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_OSTest, Language_GetString("PrfStg_OSTestT"))
 SetGadgetText(#G_CH_Preferences_Starting_CheckApps, Language_GetString("PrfStg_CheckApps"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_CheckApps, Language_GetString("PrfStg_CheckAppsT"))
 SetGadgetText(#G_CH_Preferences_Starting_SafetycopyPrefs, Language_GetString("PrfStg_SafetycopyPrefs"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_SafetycopyPrefs, Language_GetString("PrfStg_SafetycopyPrefsT"))
 SetGadgetText(#G_CH_Preferences_Starting_SafetycopyType1, Language_GetString("PrfStg_SafetycopyType1"))
 SetGadgetText(#G_CH_Preferences_Starting_SafetycopyType2, Language_GetString("PrfStg_SafetycopyType2"))
 SetGadgetText(#G_CH_Preferences_Starting_SafetycopyType3, Language_GetString("PrfStg_SafetycopyType3"))
 SetGadgetText(#G_FR_Preferences_Starting_Wallpaper, Language_GetString("PrfStg_Wallpaper"))
 SetGadgetText(#G_CH_Preferences_Starting_WallpaperChange, Language_GetString("PrfStg_ChangeWallpaper"))
 GadgetToolTipEx(#G_CH_Preferences_Starting_WallpaperChange, Language_GetString("PrfStg_ChangeWallpaperT"))
 SetGadgetText(#G_BN_Preferences_Starting_Wallpaper, Language_GetString("PrfStg_SearchWallpaper"))
 GadgetToolTipEx(#G_BN_Preferences_Starting_Wallpaper, Language_GetString("PrfStg_SearchWallpaperT"))
 ;// Preferences Interface
 SetGadgetText(#G_TX_Preferences_Interface_Language, Language_GetString("PrfInf_Language"))
 GadgetToolTipEx(#G_CB_Preferences_Interface_Language, Language_GetString("PrfInf_LanguageT"))
 SetGadgetText(#G_TX_Preferences_Interface_Position, Language_GetString("PrfInf_Position"))
 GadgetToolTipEx(#G_CB_Preferences_Interface_Position, Language_GetString("PrfInf_PositionT"))
 SetGadgetItemText(#G_CB_Preferences_Interface_Position, 0, Language_GetString("PrfInf_Position_1"), 0)
 SetGadgetItemText(#G_CB_Preferences_Interface_Position, 1, Language_GetString("PrfInf_Position_2"), 0)
 SetGadgetItemText(#G_CB_Preferences_Interface_Position, 2, Language_GetString("PrfInf_Position_3"), 0)
 SetGadgetItemText(#G_CB_Preferences_Interface_Position, 3, Language_GetString("PrfInf_Position_4"), 0)
 SetGadgetItemText(#G_CB_Preferences_Interface_Position, 4, Language_GetString("PrfInf_Position_5"), 0)
 SetGadgetText(#G_TX_Preferences_Interface_Distance, Language_GetString("PrfInf_WinGap"))
 GadgetToolTipEx(#G_TB_Preferences_Interface_Distance, Language_GetString("PrfInf_WinGapT"))
 SetGadgetText(#G_CH_Preferences_Interface_Fading, Language_GetString("PrfInf_Fading"))
 GadgetToolTipEx(#G_CH_Preferences_Interface_Fading, Language_GetString("PrfInf_FadingT"))
 SetGadgetText(#G_CH_Preferences_Interface_AlwaysOnTop, Language_GetString("PrfInf_AlwaysOnTop"))
 GadgetToolTipEx(#G_CH_Preferences_Interface_AlwaysOnTop, Language_GetString("PrfInf_AlwaysOntopT"))
 SetGadgetText(#G_TX_Preferences_Interface_SystrayIcon, Language_GetString("PrfInf_TxSysTrayIcon"))
 GadgetToolTipEx(#G_TB_Preferences_Interface_SystrayIcon, Language_GetString("PrfInf_TbSystrayIconT"))
 SetGadgetText(#G_CH_Preferences_Interface_SkinSystrayIcon, Language_GetString("PrfInf_SkinSystrayIcon"))
 GadgetToolTipEx(#G_CH_Preferences_Interface_SkinSystrayIcon, Language_GetString("PrfInf_SkinSystrayIconT"))
 SetGadgetText(#G_FR_Preferences_Interface_Space, Language_GetString("PrfInf_SpaceBar"))
 SetGadgetText(#G_OP_Preferences_Interface_ShwFreeSpace, Language_GetString("PrfInf_SB_ShwSpace"))
 GadgetToolTipEx(#G_OP_Preferences_Interface_ShwFreeSpace, Language_GetString("PrfInf_SB_ShwSpaceT"))
 SetGadgetText(#G_OP_Preferences_Interface_ShwUsedSpace, Language_GetString("PrfInf_SB_ShwUsed"))
 GadgetToolTipEx(#G_OP_Preferences_Interface_ShwUsedSpace, Language_GetString("PrfInf_SB_ShwUsedT"))
 SetGadgetText(#G_OP_Preferences_Interface_ShwPercent, Language_GetString("PrfInf_SB_Percent"))
 GadgetToolTipEx(#G_OP_Preferences_Interface_ShwPercent, Language_GetString("PrfInf_SB_PercentT"))
 SetGadgetText(#G_OP_Preferences_Interface_ShwSpace, Language_GetString("PrfInf_SB_Spaced"))
 GadgetToolTipEx(#G_OP_Preferences_Interface_ShwSpace, Language_GetString("PrfInf_SB_SpacedT"))
 ;// Preferences Skin
 SetGadgetText(#G_TX_Preferences_Skin_List, Language_GetString("PrfSkn_Skin"))
 GadgetToolTipEx(#G_CB_Preferences_Skin_List, Language_GetString("PrfSkn_SkinT"))
 SetGadgetText(#G_TX_Preferences_Skin_Name, Language_GetString("PrfSkn_Name"))
 SetGadgetText(#G_TX_Preferences_Skin_Version, Language_GetString("PrfSkn_Version"))
 SetGadgetText(#G_TX_Preferences_Skin_Autor, Language_GetString("PrfSkn_Autor"))
 SetGadgetText(#G_TX_Preferences_Skin_Homepage, Language_GetString("PrfSkn_Homepage"))
 SetGadgetText(#G_TX_Preferences_Skin_Preview, Language_GetString("PrfSkn_Preview"))
 ;// Preferences Programmsmenu
 SetGadgetText(#G_FR_Preferences_Menu_TAdjust, Language_GetString("PrfPgM_AdjustTxt"))
 SetGadgetText(#G_OP_Preferences_Menu_TAdjustLeft, Language_GetString("PrfPgM_AdjustLeft"))
 GadgetToolTipEx(#G_OP_Preferences_Menu_TAdjustLeft, Language_GetString("PrfPgM_AdjustLeftT"))
 SetGadgetText(#G_OP_Preferences_Menu_TAdjustCenter, Language_GetString("PrfPgM_AdjustCenter"))
 GadgetToolTipEx(#G_OP_Preferences_Menu_TAdjustCenter, Language_GetString("PrfPgM_AdjustCenterT"))
 SetGadgetText(#G_OP_Preferences_Menu_TAdjustRight, Language_GetString("PrfPgM_AdjustRight"))
 GadgetToolTipEx(#G_OP_Preferences_Menu_TAdjustRight, Language_GetString("PrfPgM_AdjustRightT"))
 SetGadgetText(#G_TX_Preferences_Menu_DistanceBorder, Language_GetString("PrfPgM_BorderGap"))
 GadgetToolTipEx(#G_TB_Preferences_Menu_DistanceBorder, Language_GetString("PrfPgM_BorderGapT"))
 SetGadgetText(#G_TX_Preferences_Menu_DistanceIcnTxt, Language_GetString("PrfPgM_IcnTxtGap"))
 GadgetToolTipEx(#G_TB_Preferences_Menu_DistanceIcnTxt, Language_GetString("PrfPgM_IcnTxtGapT"))
 SetGadgetText(#G_CH_Preferences_Menu_ShwIcons, Language_GetString("PrfPgM_ShwIcon"))
 GadgetToolTipEx(#G_CH_Preferences_Menu_ShwIcons, Language_GetString("PrfPgM_ShwIconT"))
 ;// Preferences Fonts
 SetGadgetText(#G_TX_Preferences_Fonts_Title, Language_GetString("PrfFnt_Title"))
 GadgetToolTipEx(#G_LI_Preferences_Fonts_List, Language_GetString("PrfFnt_FontsT"))
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, -1, Language_GetString("PrfFnt_Fonts_C1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, -1, Language_GetString("PrfFnt_Fonts_C2"), 1)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, -1, Language_GetString("PrfFnt_Fonts_C3"), 2)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, -1, Language_GetString("PrfFnt_Fonts_C4"), 3)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, -1, Language_GetString("PrfFnt_Fonts_C5"), 4)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, 0, Language_GetString("PrfFnt_Fonts_1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, 1, Language_GetString("PrfFnt_Fonts_2"), 0)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, 2, Language_GetString("PrfFnt_Fonts_3"), 0)
 SetGadgetItemText(#G_LI_Preferences_Fonts_List, 3, Language_GetString("PrfFnt_Fonts_4"), 0)
 ;// Preferences Shortcuts
 SetGadgetText(#G_TX_Preferences_Shortcuts_Title, Language_GetString("PrfShc_Title"))
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, -1, Language_GetString("PrfShc_Shortcuts_C1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, -1, Language_GetString("PrfShc_Shortcuts_C2"), 1)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, -1, Language_GetString("PrfShc_Shortcuts_C3"), 2)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, -1, Language_GetString("PrfShc_Shortcuts_C4"), 3)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, -1, Language_GetString("PrfShc_Shortcuts_C5"), 4)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 0, Language_GetString("PrfShc_Shortcuts_1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 1, Language_GetString("PrfShc_Shortcuts_2"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 2, Language_GetString("PrfShc_Shortcuts_3"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 3, Language_GetString("PrfShc_Shortcuts_4"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 4, Language_GetString("PrfShc_Shortcuts_5"), 0)
 SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, 5, Language_GetString("PrfShc_Shortcuts_6"), 0)
 SetGadgetText(#G_CH_Preferences_Shortcuts_Strg, Language_GetString("PrfShc_Shortcuts_C2"))
 SetGadgetText(#G_CH_Preferences_Shortcuts_Alt, Language_GetString("PrfShc_Shortcuts_C3"))
 SetGadgetText(#G_CH_Preferences_Shortcuts_Shift, Language_GetString("PrfShc_Shortcuts_C4"))
 ;// Preferences Folder
 SetGadgetText(#G_TX_Preferences_Folder_OwnFiles, Language_GetString("PrfFld_OwnFiles"))
 SetGadgetText(#G_BN_Preferences_Folder_OwnFilesChangeFolder, Language_GetString("PrfFld_OwnFilesSearch"))
 GadgetToolTipEx(#G_BN_Preferences_Folder_OwnFilesChangeFolder, Language_GetString("PrfFld_OwnFilesSearchT"))
 SetGadgetText(#G_CH_Preferences_Folder_MaximizeOwnFiles, Language_GetString("PrfFld_OwnFilesMax"))
 GadgetToolTipEx(#G_CH_Preferences_Folder_MaximizeOwnFiles, Language_GetString("PrfFld_OwnFilesMaxT"))
 SetGadgetText(#G_TX_Preferences_Folder_OwnFilesFolderName, Language_GetString("PrfFld_OwnFilesFldN"))
 GadgetToolTipEx(#G_LI_Preferences_Folder_OwnFilesFolderName, Language_GetString("PrfFld_OwnFilesFldNT"))
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, Language_GetString("PrfFld_OwnFilesFldN_C1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, -1, Language_GetString("PrfFld_OwnFilesFldN_C2"), 1)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 0, Language_GetString("PrfFld_OwnFilesFldN_1"), 0)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 1, Language_GetString("PrfFld_OwnFilesFldN_2"), 0)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 2, Language_GetString("PrfFld_OwnFilesFldN_3"), 0)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 3, Language_GetString("PrfFld_OwnFilesFldN_4"), 0)
 SetGadgetText(#G_TX_Preferences_Folder_BrowserStartPage, Language_GetString("PrfFld_InternetPage"))
 GadgetToolTipEx(#G_SR_Preferences_Folder_BrowserStartPage, Language_GetString("PrfFld_InternetPageT"))
 SetGadgetText(#G_CH_Preferences_Folder_BrowserStartPage, Language_GetString("PrfFld_InternetPageMax"))
 GadgetToolTipEx(#G_CH_Preferences_Folder_BrowserStartPage, Language_GetString("PrfFld_InternetPageMaxT"))
 ;// Update
 SetGadgetText(#G_TX_Update_Version_Use, Language_GetString("UpdInf_InstaledV"))
 SetGadgetText(#G_TX_Update_Version_Newest, Language_GetString("UpdInf_NewestV"))
 SetGadgetText(#G_BN_Update_Manuel, Language_GetString("UpdBtn_Manuel"))
 SetGadgetText(#G_BN_Update_Start, Language_GetString("UpdBtn_Check"))
 ;// SkinCreator
 SetGadgetText(#G_TX_SkinCreator_ResPath, Language_GetString("SkCTxt_Ressource"))
 SetGadgetText(#G_BN_SkinCreator_ResPath, Language_GetString("SkCBtn_Ressource"))
 GadgetToolTipEx(#G_BN_SkinCreator_ResPath, Language_GetString("SkCBtn_RessourceT"), 0)
 SetGadgetText(#G_TX_SkinCreator_SkinPath, Language_GetString("SkCTxt_SkinPath"))
 SetGadgetText(#G_BN_SkinCreator_SkinPath, Language_GetString("SkCBtn_SkinPath"))
 GadgetToolTipEx(#G_BN_SkinCreator_SkinPath, Language_GetString("SkCBtn_SkinPathT"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, -1, Language_GetString("SkCLii_Column1"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, -1, Language_GetString("SkCLii_Column2"), 1)
 GadgetToolTipEx(#G_LI_SkinCreator_Preferences, Language_GetString("SkCLii_ToolTip"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 0, Language_GetString("SkCLii_Entry1"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 1, Language_GetString("SkCLii_Entry2"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 2, Language_GetString("SkCLii_Entry3"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 3, Language_GetString("SkCLii_Entry4"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 4, Language_GetString("SkCLii_Entry5"), 0)
 SetGadgetItemText(#G_LI_SkinCreator_Preferences, 5, Language_GetString("SkCLii_Entry6"), 0)
 SetGadgetText(#G_CH_SkinCreator_ShwLog, Language_GetString("SkCChb_ShwLog"))
 GadgetToolTipEx(#G_CH_SkinCreator_ShwLog, Language_GetString("SkCChb_ShwLogT"), 0)
 SetGadgetText(#G_BN_SkinCreator_Cancel, Language_GetString("SkCBtn_Cancel"))
 SetGadgetText(#G_BN_SkinCreator_Create, Language_GetString("SkCBtn_Create"))
 ;// Autorun
 SetGadgetText(#G_TX_Autorun_Description, Language_GetString("AutTxt_Description"))
 SetGadgetText(#G_TX_Autorun_DriveName, Language_GetString("AutTxt_DriveName"))
 SetGadgetText(#G_TX_Autorun_DriveIcon, Language_GetString("AutTxt_DriveIcon"))
 SetGadgetText(#G_BN_Autorun_DriveIcon, Language_GetString("AutBtn_DriveIcon"))
 GadgetToolTipEx(#G_BN_Autorun_DriveIcon, Language_GetString("AutBtn_DriveIconT"), 0)
 SetGadgetText(#G_CH_Autorun_DoubleClick, Language_GetString("AutChb_DoubleClick"))
 GadgetToolTipEx(#G_CH_Autorun_DoubleClick, Language_GetString("AutChb_DoubleClickT"), 0)
 SetGadgetText(#G_CH_Autorun_KontextEntry, Language_GetString("AutChb_KontextEntry"))
 GadgetToolTipEx(#G_CH_Autorun_KontextEntry, Language_GetString("AutChb_KontextEntryT"), 0)
 GadgetToolTipEx(#G_SR_Autorun_Preview, Language_GetString("AutStr_Preview"), 0)
 SetGadgetText(#G_BN_Autorun_Remove, Language_GetString("AutBtn_Remove"))
 GadgetToolTipEx(#G_BN_Autorun_Remove, Language_GetString("AutBtn_RemoveT"), 0)
 SetGadgetText(#G_BN_Autorun_Copy, Language_GetString("AutBtn_Copy"))
 GadgetToolTipEx(#G_BN_Autorun_Copy, Language_GetString("AutBtn_CopyT"), 0)
 ;// Error
 SetGadgetText(#G_BN_Error_Copy, Language_GetString("ErrBtn_Copy"))
 SetGadgetText(#G_BN_Error_Ignore, Language_GetString("ErrBtn_Ignore"))
 SetGadgetText(#G_BN_Error_End, Language_GetString("ErrBtn_End"))
EndProcedure

;Einstellungen, laden
Procedure Preferences_Load()
 Protected ProgAmount.l, x.l, hIcn.l, HotkeyFlag.l
 
 OpenPreferences(ExePath() + #S_Folder + #S_FilePref)
  PreferenceGroup("Preferences")
   
   ;// Other
   B_FirstStart = ReadPreferenceLong("FirstStart", 1)
   If B_FirstStart < 0 Or B_FirstStart > 1: B_FirstStart = 1: EndIf
   
   ;// Starting
   B_ShowAtStart = ReadPreferenceLong("ShowAtStart", 0)
   If B_ShowAtStart < 0 Or B_ShowAtStart > 1: B_ShowAtStart = 0: EndIf
   B_VersionCheck = ReadPreferenceLong("VersionCheck", 0)
   If B_VersionCheck < 0 Or B_VersionCheck > 1: B_VersionCheck = 0: EndIf
   B_MsgOSTest = ReadPreferenceLong("MsgOSTest", 1)
   If B_MsgOSTest < 0 Or B_MsgOSTest > 1: B_MsgOSTest = 1: EndIf
   B_ShowAppErrors = ReadPreferenceLong("ShowAppErrors", 0)
   If B_ShowAppErrors < 0 Or B_ShowAppErrors > 1: B_ShowAppErrors = 0: EndIf
   S_LastSavetycopyPrefs = ReadPreferenceString("LastSavetycopyPrefs", "")
   B_SafetycopyPrefs = ReadPreferenceLong("SafetycopyPrefs", 1)
   If B_SafetycopyPrefs < 0 Or B_SafetycopyPrefs > 1: B_SafetycopyPrefs = 1: EndIf
   B_SafetycopyType = ReadPreferenceLong("SafetycopyType", 2)
   If B_SafetycopyType < 1 Or B_SafetycopyType > 3: B_SafetycopyType = 3: EndIf
   B_ChangeWallpaper = ReadPreferenceLong("ChangeWallpaper", 0)
   If B_ChangeWallpaper < 0 Or B_ChangeWallpaper > 1: B_ChangeWallpaper = 0: EndIf
   S_Wallpaper = ReadPreferenceString("Wallpaper", "")
   If FileSize(DriveLeter() + S_Wallpaper) <= 0 Or IsBitmap(DriveLeter() + S_Wallpaper) = 0
    B_ChangeWallpaper = 0
    S_Wallpaper = ""
   EndIf
   
   ;// Interface
   S_Language = ReadPreferenceString("Language", #S_DefLanguage)
   If S_Language = "" Or FileSize(ExePath() + #S_Folder + #S_FolderLanguage + S_Language) < 0: S_Language = #S_DefLanguage: EndIf
   B_WindowPosition = ReadPreferenceFloat("WindowPosition", 3)
   If B_WindowPosition < 0 Or B_WindowPosition > 4: B_WindowPosition = 3: EndIf
   B_Gap = ReadPreferenceLong("Gap", 2)
   If B_Gap < 0 Or B_Gap > 25: B_Gap = 2: EndIf  
   B_Fading = ReadPreferenceLong("Fading", 0)
   If B_Fading < 0 Or B_Fading > 1: B_Fading = 0: EndIf
   B_AlwaysOnTop = ReadPreferenceLong("AlwaysOnTop", 1)
   If B_AlwaysOnTop < 0 Or B_AlwaysOnTop > 1: B_AlwaysOnTop = 1: EndIf
   For x = #Win_Main To #Win_Error: Window_AlwaysOnTop(x, B_AlwaysOnTop): Next
   B_SkinSysTrayIcon = ReadPreferenceLong("SkinSysTrayIcon", #True)
   If B_SkinSysTrayIcon < 0 Or B_SkinSysTrayIcon > 1: B_SkinSysTrayIcon = 1: EndIf
   B_SysTrayIcon = ReadPreferenceLong("SysTrayIcon", 0)
   If Interface_RefreshSysTrayLib(ExePath() + "Launcher\" + #S_FileSysTrayLib) > 0
    If B_SysTrayIcon < 0: B_SysTrayIcon = 0: EndIf
    If B_SysTrayIcon > ListSize(hSysTrayIcn()): B_SysTrayIcon = ListSize(hSysTrayIcn()): EndIf
    SetGadgetAttribute(#G_TB_Preferences_Interface_SystrayIcon, #PB_TrackBar_Maximum, ListSize(hSysTrayIcn()) - 1)
   Else
    DisableGadget(#G_TB_Preferences_Interface_SystrayIcon, #True)
    DisableGadget(#G_CH_Preferences_Interface_SkinSystrayIcon, #True)
    B_SysTrayIcon = 0
    B_SkinSysTrayIcon = 1
   EndIf
   B_ShowSpace = ReadPreferenceLong("ShowSpace", 0)
   If B_ShowSpace < 0 Or B_ShowSpace > 1: B_ShowSpace = 0: EndIf
   B_ShowSpaceType = ReadPreferenceLong("SpaceType", 1)
   If B_ShowSpaceType < 0 Or B_ShowSpaceType > 1: B_ShowSpaceType = 1: EndIf   
   
   ;// Programsmenu
   B_AdjustMnu = ReadPreferenceLong("AdjustMnu", 0)
   If B_AdjustMnu < 0 Or B_AdjustMnu > 2: B_AdjustMnu = 0: EndIf
   B_DistBorder = ReadPreferenceLong("DistanceBorder", 4)
   If B_DistBorder < 0 Or B_DistBorder > 15: B_DistBorder = 4: EndIf
   B_DistIcnTxt = ReadPreferenceLong("DistanceIcnTxt", 4)
   If B_DistIcnTxt < 0 Or B_DistIcnTxt > 15: B_DistIcnTxt = 4: EndIf
   B_ShwIcons = ReadPreferenceLong("ShowIcons", 1)
   If B_ShwIcons < 0 Or B_ShwIcons > 1: B_ShwIcons = 1: EndIf
   
   ;// Fonts
   For x = 0 To #DIM_Fonts
    Font(x)\Name = ReadPreferenceString("FontNa_" + Str(x), "Arial")
    If Font(x)\Name = "": Font(x)\Name = "Tahoma": EndIf
    Font(x)\Size = ReadPreferenceLong("FontSi_" + Str(x), 8)
    If Font(x)\Size < 5 Or Font(x)\Size > 25: Font(x)\Size = 8: EndIf
    Font(x)\Style = ReadPreferenceLong("FontSt_" + Str(x), #PB_Font_HighQuality)
    If Font(x)\Style < 16 Or Font(x)\Style > 784: Font(x)\Style = #PB_Font_HighQuality: EndIf
    Font(x)\Color = ReadPreferenceLong("FontCl_" + Str(x), 16777215)
    If Font(x)\Color < 0 Or Font(x)\Color > 16777215: Font(x)\Color = 0: EndIf
    Font(x)\hFnt = LoadFontEx(x, Font(x)\Name, Font(x)\Size, Font(x)\Style)
   Next
   Interface_RefreshFonts(Font(3)\hFnt)
   
   ;// Skin
   S_Skin = ReadPreferenceString("Skin", #S_DefSkin)
   If S_Skin = "" Or FileSize(ExePath() + #S_Folder + #S_FolderSkin + S_Skin) < 0: S_Skin = #S_DefSkin: EndIf
   If Skin_Load(ExePath() + #S_Folder + #S_FolderSkin + S_Skin) = 0
    MsgBox_Error(Language_GetString("MsgErr_LoadSkin") + #CRLF$ + "'" + ExePath() + #S_Folder + #S_FolderSkin + S_Skin + "'"): End
   EndIf
   
   ;// Shortcuts
   For x = 0 To #DIM_Shortcut
    Shortcut(x)\active  = ReadPreferenceLong("HKActive_" + Str(x), 0)
    Shortcut(x)\control = ReadPreferenceLong("HKControl_" + Str(x), -1)
    Shortcut(x)\menu    = ReadPreferenceLong("HKMenu_" + Str(x), -1)
    Shortcut(x)\shift   = ReadPreferenceLong("HKShift_" + Str(x), -1)
    Shortcut(x)\misc    = ReadPreferenceLong("HKMisc_" + Str(x), -1)
    If Shortcut(x)\active < 0 Or Shortcut(x)\active > 1: Shortcut(x)\active = 0: EndIf
    If Shortcut(x)\control < 0 Or Shortcut(x)\control > 1 Or Shortcut(x)\menu < 0 Or Shortcut(x)\menu > 1 Or Shortcut(x)\shift < 0 Or Shortcut(x)\shift > 1 Or Shortcut(x)\misc < 0 Or Shortcut(x)\misc > 90
     Select x
      Case 0: Shortcut(x)\control = 1: Shortcut(x)\menu = 1: Shortcut(x)\shift = 0: Shortcut(x)\misc = 76
      Case 1: Shortcut(x)\control = 0: Shortcut(x)\menu = 0: Shortcut(x)\shift = 0: Shortcut(x)\misc = 38
      Case 2: Shortcut(x)\control = 0: Shortcut(x)\menu = 0: Shortcut(x)\shift = 0: Shortcut(x)\misc = 40
      Case 3: Shortcut(x)\control = 1: Shortcut(x)\menu = 1: Shortcut(x)\shift = 0: Shortcut(x)\misc = 80
      Case 4: Shortcut(x)\control = 1: Shortcut(x)\menu = 1: Shortcut(x)\shift = 0: Shortcut(x)\misc = 69
      Case 5: Shortcut(x)\control = 1: Shortcut(x)\menu = 1: Shortcut(x)\shift = 0: Shortcut(x)\misc = 66
     EndSelect
    EndIf
   Next   
   
   ;// Folder
   S_OwnFiles = ReadPreferenceString("FolderOwnFiles", Right(ExePath(), Len(ExePath()) - 3) + #S_DefOwnFiles)
   If S_OwnFiles = "" Or FileSize(DriveLeter() + S_OwnFiles) <> -2: S_OwnFiles = Right(ExePath(), Len(ExePath()) - 3) + #S_DefOwnFiles: EndIf
   If FileSize(DriveLeter() + S_OwnFiles) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles): EndIf
   S_Documents = ReadPreferenceString("FolderDocuments", #S_DefDocuments)
   If S_Documents = "" Or FileSize(DriveLeter() + S_OwnFiles + S_Documents) <> -2: S_Documents = #S_DefDocuments: EndIf
   If FileSize(DriveLeter() + S_OwnFiles + S_Documents) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + #S_DefDocuments): EndIf
   S_Music = ReadPreferenceString("FolderMusic", #S_DefMusic)
   If S_Music = "" Or FileSize(DriveLeter() + S_OwnFiles + S_Music) <> -2: S_Music = #S_DefMusic: EndIf
   If FileSize(DriveLeter() + S_OwnFiles + S_Music) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + #S_DefMusic + "\"): EndIf
   S_Pictures = ReadPreferenceString("FolderPictures", #S_DefPictures)
   If S_Pictures = "" Or FileSize(DriveLeter() + S_OwnFiles + S_Pictures) <> -2: S_Pictures = #S_DefPictures: EndIf
   If FileSize(DriveLeter() + S_OwnFiles + S_Pictures) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + #S_DefPictures + "\"): EndIf
   S_Movies = ReadPreferenceString("FolderMovies", #S_DefMovies)
   If S_Movies = "" Or FileSize(DriveLeter() + S_OwnFiles + S_Movies) <> -2: S_Movies = #S_DefMovies: EndIf
   If FileSize(DriveLeter() + S_OwnFiles + S_Movies) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + #S_DefMovies + "\"): EndIf
   B_MaximizeDocs = ReadPreferenceLong("MaxDocFolder", 0)
   If B_MaximizeDocs < 0 Or B_MaximizeDocs > 1: B_MaximizeDocs = 1: EndIf
   S_StartPage = ReadPreferenceString("StartPage", #S_DefStartPage)
   If S_StartPage = "" Or UCase(Left(S_StartPage, 7)) <> "HTTP://": S_StartPage = #S_DefStartPage: EndIf
   B_MaximizeStartPage = ReadPreferenceLong("MaxStartPage", 1)
   If B_MaximizeStartPage < 0 Or B_MaximizeStartPage > 1: B_MaximizeStartPage = 1: EndIf
   
   ;// SkinCreator
   B_ShwSkinCLog = ReadPreferenceLong("ShowCreateSkinLog", 1)
   If B_ShwSkinCLog < 0 Or B_ShwSkinCLog > 1: B_ShwSkinCLog = 1: EndIf
   
  ;// Programs
  PreferenceGroup("Programs")
   ProgAmount = ReadPreferenceLong("Amount", -1)
   If ProgAmount >= 0
    For x = 0 To ProgAmount
     AddElement(Application())
     Application()\Name = ReadPreferenceString("Name_" + Str(x), "")
     If Application()\Name = "": Application()\Name = #S_DefAppName: EndIf
     Application()\Path = ReadPreferenceString("Path_" + Str(x), "")
     If FileSize(ConvertString(Application()\Path)) < 0
      If B_ShowAppErrors = 1: MsgBox_Error(Language_GetString("MsgApp_WrongAppPath") + #CRLF$ + Application()\Name): EndIf
     EndIf
     Application()\Para = ReadPreferenceString("Para_" + Str(x), "")
     Application()\Icon = ReadPreferenceString("Icon_" + Str(x), "")
     If Application()\Icon <> #S_DefAppIcon
      If ExtractIcon_(GetModuleHandle_(0), ConvertString(Application()\Icon), -1) > 0
       ExtractIconEx_(ConvertString(Application()\Icon), 0, #Null, @hIcn, 1)
       If hIcn <> 0
        Application()\IcnID = hIcn
       Else
        If B_ShowAppErrors = #True: MsgBox_Error(Language_GetString("MsgErr_NoIcons") + #CRLF$ + Application()\Name): EndIf
        Application()\Icon  = #S_DefAppIcon
        Application()\IcnID = Icn_AppDef
       EndIf
      Else
       If B_ShowAppErrors = #True: MsgBox_Error(Language_GetString("MsgErr_NoIcons") + #CRLF$ + Application()\Name): EndIf
       Application()\Icon  = #S_DefAppIcon
       Application()\IcnID = Icn_AppDef
      EndIf
     Else
      Application()\IcnID = Icn_AppDef
     EndIf
     Application()\Work = ReadPreferenceString("Work_" + Str(x), "")
     If FileSize(ConvertString(Application()\Work)) <> -2 And Application()\Work <> ""
      If B_ShowAppErrors = 1: MsgBox_Error(Language_GetString("MsgApp_WrongWorkPath") + #CRLF$ + Application()\Name): EndIf
     EndIf
     Application()\StartT = ReadPreferenceLong("StrT_" + Str(x), 0)
     If Application()\StartT < 0 Or Application()\StartT > 3: Application()\StartT = 0: EndIf
     Application()\AutoS = ReadPreferenceLong("AutS_" + Str(x), 0)
     If Application()\AutoS < 0 Or Application()\AutoS > 1: Application()\AutoS = 0: EndIf
    Next
   EndIf
 
 ClosePreferences()
EndProcedure

;Einstellungen, speichern
Procedure Preferences_Save()
 Protected x.l
 
 If CreatePreferences(ExePath() + #S_Folder + #S_FilePref) <> #False
  PreferenceComment("Preferences File for Launcher")
  PreferenceComment("Do not change please")
  PreferenceComment("")
  ;// Main
  PreferenceGroup("Main")
   WritePreferenceLong("Version", #PrgVers)
   WritePreferenceLong("LastEnd", Date())
  PreferenceGroup("Preferences")
   ;// Other
   WritePreferenceLong("FirstStart", B_FirstStart)
   ;// Starting
   WritePreferenceLong("ShowAtStart", B_ShowAtStart)
   WritePreferenceLong("VersionCheck", B_VersionCheck)
   WritePreferenceLong("MsgOSTest", B_MsgOSTest)
   WritePreferenceLong("ShowAppErrors", B_ShowAppErrors)
   WritePreferenceString("LastSavetycopyPrefs", S_LastSavetycopyPrefs)
   WritePreferenceLong("SafetycopyPrefs", B_SafetycopyPrefs)
   WritePreferenceLong("SafetycopyType", B_SafetycopyType)
   WritePreferenceLong("ChangeWallpaper", B_ChangeWallpaper)
   WritePreferenceString("Wallpaper", S_Wallpaper)
   ;// Interface
   WritePreferenceString("Language", S_Language)
   WritePreferenceLong("WindowPosition", B_WindowPosition)
   WritePreferenceLong("Gap", B_Gap)
   WritePreferenceLong("Fading", B_Fading)
   WritePreferenceLong("AlwaysOnTop", B_AlwaysOnTop)
   WritePreferenceLong("SkinSysTrayIcon", B_SkinSysTrayIcon)
   WritePreferenceLong("SysTrayIcon", B_SysTrayIcon)
   WritePreferenceLong("ShowSpace", B_ShowSpace)
   WritePreferenceLong("SpaceType", B_ShowSpaceType)   
   ;// Skin
   WritePreferenceString("Skin", S_Skin)
   ;// Programsmenu
   WritePreferenceLong("AdjustMnu", B_AdjustMnu)
   WritePreferenceLong("DistanceBorder", B_DistBorder)
   WritePreferenceLong("DistanceIcnTxt", B_DistIcnTxt)
   WritePreferenceLong("ShowIcons", B_ShwIcons)
   ;// Fonts
   For x = 0 To #DIM_Fonts
    WritePreferenceString("FontNa_" + Str(x), Font(x)\Name)
    WritePreferenceLong("FontSi_" + Str(x), Font(x)\Size)
    WritePreferenceLong("FontSt_" + Str(x), Font(x)\Style)
    WritePreferenceLong("FontCl_" + Str(x), Font(x)\Color)
   Next
   ;// Shortcuts
   For x = 0 To #DIM_Shortcut
    WritePreferenceLong("HKActive_" + Str(x), Shortcut(x)\active)
    WritePreferenceLong("HKControl_" + Str(x), Shortcut(x)\control)
    WritePreferenceLong("HKMenu_" + Str(x), Shortcut(x)\menu)
    WritePreferenceLong("HKShift_" + Str(x), Shortcut(x)\shift)
    WritePreferenceLong("HKMisc_" + Str(x), Shortcut(x)\misc)
   Next   
   ;// Folder
   WritePreferenceString("FolderOwnFiles", S_OwnFiles)
   WritePreferenceLong("MaxDocFolder", B_MaximizeDocs)
   WritePreferenceString("FolderDocuments", S_Documents)
   WritePreferenceString("FolderMusic", S_Music)
   WritePreferenceString("FolderPictures", S_Pictures)
   WritePreferenceString("FolderMovies", S_Movies)
   WritePreferenceString("StartPage", S_StartPage)
   WritePreferenceLong("MaxStartPage", B_MaximizeStartPage)
   ;// SkinCreator
   WritePreferenceLong("ShowCreateSkinLog", B_ShwSkinCLog)
  ;// Programs
  PreferenceGroup("Programs")
   WritePreferenceLong("Amount", ListSize(Application()) - 1)
   ForEach Application()
    WritePreferenceString("Name_" + Str(ListIndex(Application())), Application()\Name)
    WritePreferenceString("Path_" + Str(ListIndex(Application())), Application()\Path)
    WritePreferenceString("Para_" + Str(ListIndex(Application())), Application()\Para)
    WritePreferenceString("Icon_" + Str(ListIndex(Application())), Application()\Icon)
    WritePreferenceString("Work_" + Str(ListIndex(Application())), Application()\Work)
    WritePreferenceLong("StrT_" + Str(ListIndex(Application())), Application()\StartT)
    WritePreferenceLong("AutS_" + Str(ListIndex(Application())), Application()\AutoS)
   Next
  ClosePreferences()
 Else
  MsgBox_Error(Language_GetString("MsgErr_SavePreferences") + #CRLF$ + ExePath() + #S_FilePref)
 EndIf
EndProcedure

;Programme, überprüft ob die aktuellen Programmeinstellungen korekt sind
Procedure Application_CheckStatus()
 Protected Bool.l, Message.s, Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1 And GetGadgetState(#G_TR_Preferences_Categorie) = 0
  SelectElement(Application(), Sel)
  
  Bool = 0: Message = ""
  
  If Application()\Name = ""
   Bool = 1: Message + Language_GetString("MsgApp_NoAppPath") + #CRLF$
  EndIf

  If Application()\Path = "" Or FileSize(ConvertString(Application()\Path)) < 0
   Bool = 1: Message + Language_GetString("MsgApp_WrongAppPath") + #CRLF$
  EndIf
  
  If Application()\Icon <> #S_DefAppIcon
   If ExtractIcon_(GetModuleHandle_(0), ConvertString(Application()\Icon), -1) = 0 Or FileSize(ConvertString(Application()\Icon)) < 0
    Bool = 1: Message + Language_GetString("MsgApp_WrongIconPath") + #CRLF$
   EndIf
  EndIf
  
  If Application()\Work <> "" And FileSize(ConvertString(Application()\Work)) <> -2
   Bool = 1: Message + Language_GetString("MsgApp_WrongWorkPath") + #CRLF$
  EndIf
  
  If Bool = 1
   S_AppErrorMsg = Message
   HideGadget(#G_BI_Preferences_Programs_Warning, #False)
  Else
   HideGadget(#G_BI_Preferences_Programs_Warning, #True)
  EndIf
 Else
  HideGadget(#G_BI_Preferences_Programs_Warning, #True)
 EndIf
EndProcedure

;Programme, aktualisiert die Einstellungen vom aktuell ausgewählten Programm
Procedure Application_RefreshSel()
 Protected Sel.l, Disable.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  SetGadgetText(#G_SR_Preferences_Programs_Name,            Application()\Name)
  SetGadgetText(#G_SR_Preferences_Programs_Path,            Application()\Path)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Path,            ConvertString(Application()\Path))
  SetGadgetText(#G_SR_Preferences_Programs_Parameter,       Application()\Para)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Parameter,       ConvertString(Application()\Para))
  SetGadgetText(#G_SR_Preferences_Programs_Icon,            Application()\Icon)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Icon,            ConvertString(Application()\Icon))
  SetGadgetText(#G_SR_Preferences_Programs_WorkPath,        Application()\Work)
  GadgetToolTipEx(#G_SR_Preferences_Programs_WorkPath,        ConvertString(Application()\Work))
  SetGadgetState(#G_CB_Preferences_Programs_StartType,      Application()\StartT)
  SetGadgetState(#G_CB_Preferences_Programs_AutoStart,      Application()\AutoS)
  Application_CheckStatus()
 Else
  SetGadgetText(#G_SR_Preferences_Programs_Name, "")
  SetGadgetText(#G_SR_Preferences_Programs_Path, "")
  SetGadgetText(#G_SR_Preferences_Programs_Parameter, "")
  SetGadgetText(#G_SR_Preferences_Programs_Icon, "")
  SetGadgetText(#G_SR_Preferences_Programs_WorkPath, "")
  SetGadgetState(#G_CB_Preferences_Programs_StartType, 0)
  SetGadgetState(#G_CB_Preferences_Programs_AutoStart, 0)
 EndIf
 
 If Sel = -1: Disable = 1: EndIf
 DisableGadget(#G_SR_Preferences_Programs_Name, Disable)
 DisableGadget(#G_SR_Preferences_Programs_Path, Disable)
 DisableGadget(#G_BN_Preferences_Programs_Path, Disable)
 DisableGadget(#G_SR_Preferences_Programs_Parameter, Disable)
 DisableGadget(#G_SR_Preferences_Programs_Icon, Disable)
 DisableGadget(#G_BN_Preferences_Programs_Icon, Disable)
 DisableGadget(#G_SR_Preferences_Programs_WorkPath, Disable)
 DisableGadget(#G_BN_Preferences_Programs_WorkPath, Disable)
 DisableGadget(#G_CB_Preferences_Programs_StartType, Disable)
 DisableGadget(#G_CB_Preferences_Programs_AutoStart, Disable)
EndProcedure

;Programme, verschiebt ein Programm in der Liste nach oben
Procedure Application_Up()
 Protected Sel.l, oldPos.l, newPos.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 
 If Sel <> -1 And Sel > 0
  SelectElement(Application(), Sel)
  oldPos = @Application()
  SelectElement(Application(), Sel - 1)
  newPos = @Application()
  SwapElements(Application(), oldPos, newPos)
 
  SelectElement(Application(), Sel)
  SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel, Application()\Name, 0)
  TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel, Application()\IcnID)
  SelectElement(Application(), Sel - 1)
  SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel - 1, Application()\Name, 0)
  TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel - 1, Application()\IcnID)
  
  SetGadgetState(#G_TR_Preferences_Programs_List, Sel - 1)
 EndIf
EndProcedure

;Programme, verschiebt ein Programm in der Liste nach unten
Procedure Application_Down()
 Protected Sel.l, oldPos.l, newPos.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 
 If Sel <> -1 And Sel < ListSize(Application()) - 1
  SelectElement(Application(), Sel)
  oldPos = @Application()
  SelectElement(Application(), Sel + 1)
  newPos = @Application()
  SwapElements(Application(), oldPos, newPos)
 
  SelectElement(Application(), Sel)
  SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel, Application()\Name, 0)
  TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel, Application()\IcnID)
  SelectElement(Application(), Sel + 1)
  SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel + 1, Application()\Name, 0)
  TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel + 1, Application()\IcnID)
  
  SetGadgetState(#G_TR_Preferences_Programs_List, Sel + 1)
 EndIf
EndProcedure

;Programme, sortiert die Liste
Procedure Application_Sort()
 Protected SName.s, Sel.l
 
 If CountGadgetItems(#G_TR_Preferences_Programs_List) > 0 And ListSize(Application()) > 0
  If GetGadgetState(#G_TR_Preferences_Programs_List) = -1
   Sel = 0
  Else
   SelectElement(Application(), GetGadgetState(#G_TR_Preferences_Programs_List))
   SName = Application()\Name
  EndIf
  
  SortStructuredList(Application(), 2, OffsetOf(App\Name), #PB_Sort_String)
  
  ClearGadgetItems(#G_TR_Preferences_Programs_List)
  ForEach Application()
   AddGadgetItem(#G_TR_Preferences_Programs_List, -1, Application()\Name, Application()\IcnID)
   If Application()\Name = SName: Sel = ListIndex(Application()): EndIf
  Next

  SetGadgetState(#G_TR_Preferences_Programs_List, Sel)
  Application_RefreshSel()
 EndIf
EndProcedure

;Programme, fügt ein neues Programm ein
Procedure Application_Add()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
 Else
  LastElement(Application())
 EndIf
 
 AddElement(Application())
 Application()\Name   = #S_DefAppName
 Application()\Para   = #S_DefAppPara
 Application()\Icon   = #S_DefAppIcon
 Application()\IcnID  = Icn_AppDef
 Application()\StartT = #B_DefAppStartT
 Application()\AutoS  = #B_DefAppAutoS
 
 AddGadgetItem(#G_TR_Preferences_Programs_List, ListIndex(Application()), #S_DefAppName, Icn_AppDef)
 TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, ListIndex(Application()), Icn_AppDef)
 
 SetGadgetState(#G_TR_Preferences_Programs_List, ListIndex(Application()))
 SetActiveGadget(#G_TR_Preferences_Programs_List)
 
 Application_RefreshSel()
 Application_CheckStatus()
EndProcedure

;Programme, entfernt ein ausgewähltes Programm
Procedure Application_Del()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  If MessageRequester(#PrgName, Language_GetString("MsgApp_RemoveApplication") + #CRLF$ + Application()\Name, #MB_YESNO|#MB_ICONQUESTION) = #IDYES
   SelectElement(Application(), Sel)
   If Application()\IcnID <> Icn_AppDef: DestroyIcon_(Application()\IcnID): EndIf
   DeleteElement(Application())
   RemoveGadgetItem(#G_TR_Preferences_Programs_List, Sel)
   If CountGadgetItems(#G_TR_Preferences_Programs_List) = 0
    SetGadgetText(#G_SR_Preferences_Programs_Name, "")
    SetGadgetText(#G_SR_Preferences_Programs_Path, "")
    SetGadgetText(#G_SR_Preferences_Programs_Parameter, "")
    SetGadgetText(#G_SR_Preferences_Programs_Icon, "")
    SetGadgetState(#G_CB_Preferences_Programs_AutoStart, 0)
   EndIf
   Application_CheckStatus()
   Application_RefreshSel()
  EndIf
 EndIf
EndProcedure

;Programme, verändert denn Name vom ausgewählten Programm
Procedure Application_ChangeName()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  Application()\Name = GetGadgetText(#G_SR_Preferences_Programs_Name)
  SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel, GetGadgetText(#G_SR_Preferences_Programs_Name), 0)
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert denn Path vom ausgewählten Programm
Procedure Application_ChangePath()
 Protected Sel.l, NewPath.s, IcnID.l, IcnHandle.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  
  If FileSize(GetPathPart(ConvertString(Application()\Path))) = -2 And Application()\Path <> ""
   NewPath = GetPathPart(ConvertString(Application()\Path))
  Else
   NewPath = ExePath()
  EndIf
  
  NewPath = OpenFileRequester(#PrgName, NewPath, "Ausführbare Dateien|*.exe;*.com;*.bat|Alle Dateien|*.*", 0)
  If NewPath <> ""
   If DriveLeter() = Left(NewPath, 3)
    SetGadgetText(#G_SR_Preferences_Programs_Path, "%usbdrive%" + Right(NewPath, Len(NewPath) - 3))
    Application()\Path = "%usbdrive%" + Right(NewPath, Len(NewPath) - 3)
    If Application()\Name = #S_DefAppName
     Application()\Name = GetFileNamePart(NewPath)
     SetGadgetItemText(#G_TR_Preferences_Programs_List, Sel, Application()\Name, 0)
    EndIf
    If ExtractIcon_(GetModuleHandle_(0), ConvertString(Application()\Path), -1) > 0
     ExtractIconEx_(ConvertString(Application()\Path), 0, #Null, @IcnHandle, 1)
     If IcnHandle <> 0
      If Application()\IcnID <> Icn_AppDef
       DestroyIcon_(Application()\IcnID)
      EndIf
      Application()\Icon  = Application()\Path
      Application()\IcnID = IcnHandle
     Else
      Application()\Icon  = #S_DefAppIcon
      Application()\IcnID = Icn_AppDef
     EndIf
    Else
     Application()\Icon  = #S_DefAppIcon
     Application()\IcnID = Icn_AppDef
    EndIf
    TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel, Application()\IcnID)
    Application_RefreshSel()
   Else
    MsgBox_Error(Language_GetString("MsgErr_PortableDriveFile"))
   EndIf
  EndIf
 
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert denn Path vom ausgewählten Programm während des editierens
Procedure Application_ChangePathEdit()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If ListSize(Application()) > 0 And Sel <> -1
  SelectElement(Application(), Sel)
  Application()\Path = GetGadgetText(#G_SR_Preferences_Programs_Path)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Path, ConvertString(Application()\Path))
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert denn Parameter vom ausgewählten Programm
Procedure Application_ChangeParameter()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  Application()\Para = GetGadgetText(#G_SR_Preferences_Programs_Parameter)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Parameter, ConvertString(Application()\Para))
 EndIf
EndProcedure

;Programme, verändert das Symbol vom ausgewählten Programm
Procedure Application_ChangeIcon()
 Protected Sel.l, sPath.s, pIcn.s, hIcn.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  
  If FileSize(DriveLeter() + GetPathPart(Application()\Icon)) = -2 And Application()\Icon <> #S_DefAppIcon
   sPath = DriveLeter() + GetPathPart(Application()\Icon)
  Else
   sPath = ExePath()
  EndIf
  
  pIcn = OpenFileRequester(#PrgName, sPath, "Alle unterstützten Formate|*.exe;*.com;*.dll;*.ico|Alle Dateien|*.*", 0)
  If pIcn <> ""
   If Left(pIcn, 3) <> DriveLeter()
    MsgBox_Error(Language_GetString("MsgErr_PortableDriveFile"))
    ProcedureReturn 0
   EndIf
   If ExtractIcon_(GetModuleHandle_(0), pIcn, -1) > 0
    ExtractIconEx_(pIcn, 0, #Null, @hIcn, 1)
    If hIcn <> 0
     Application()\Icon  = "%usbdrive%" + Right(pIcn, Len(pIcn) - 3)
     Application()\IcnID = hIcn
     SetGadgetText(#G_SR_Preferences_Programs_Icon, Application()\Icon)
     GadgetToolTipEx(#G_SR_Preferences_Programs_Icon, ConvertString(Application()\Icon))
     TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel, hIcn)
     ProcedureReturn 1
    EndIf
   EndIf
   MsgBox_Error(Language_GetString("MsgErr_NoIcons") + #CRLF$ + "'" + pIcn + "'")
  EndIf
  
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert das Symbol vom ausgewählten Programm
Procedure Application_ChangeIconEdit()
 Protected Sel.l, hIcn.l, oldhIcn.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  oldhIcn = Application()\IcnID
  Application()\Icon = GetGadgetText(#G_SR_Preferences_Programs_Icon)
  GadgetToolTipEx(#G_SR_Preferences_Programs_Icon, ConvertString(Application()\Icon))
 
  If FileSize(ConvertString(Application()\Icon)) > 0
   If ExtractIcon_(GetModuleHandle_(0), ConvertString(Application()\Icon), -1) > 0
    ExtractIconEx_(ConvertString(Application()\Icon), 0, #Null, @hIcn, 1)
    If hIcn <> 0
     Application()\IcnID = hIcn
    Else
     Application()\IcnID = Icn_AppDef
    EndIf
   Else
    Application()\IcnID = Icn_AppDef
   EndIf
  Else
   Application()\IcnID = Icn_AppDef
  EndIf
  
  If Application()\IcnID <> oldhIcn
   TreeGadget_ChangeIcon(#G_TR_Preferences_Programs_List, Sel, Application()\IcnID)
  EndIf
 
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert das Arbeitsverzeichnis
Procedure Application_ChangeWorkingDirectory()
Protected Sel.l, Result.s
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)
  
  If FileSize(DriveLeter() + GetPathPart(Application()\Work)) = -2
   Result = DriveLeter() + GetPathPart(Application()\Work)
  Else
   Result = ExePath()
  EndIf
  
  Result = PathRequester(#PrgName, Result)
  If Result <> ""
   If Left(Result, 3) <> DriveLeter()
    MsgBox_Error(Language_GetString("MsgErr_PortableDriveDir")): ProcedureReturn 0
   Else
    Application()\Work = "%usbdrive%" + Right(Result, Len(Result) - 3)
    SetGadgetText(#G_SR_Preferences_Programs_WorkPath, Application()\Work)
    GadgetToolTipEx(#G_SR_Preferences_Programs_WorkPath, ConvertString(Application()\Work))
   EndIf
  EndIf
  
  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert das Arbeitsverzeichnis OnTheFly
Procedure Application_ChangeWorkingDirectoryEdit()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_TR_Preferences_Programs_List)
 If Sel <> -1
  SelectElement(Application(), Sel)

  Application()\Work = GetGadgetText(#G_SR_Preferences_Programs_WorkPath)
  GadgetToolTipEx(#G_SR_Preferences_Programs_WorkPath, ConvertString(Application()\Work))

  Application_CheckStatus()
 EndIf
EndProcedure

;Programme, verändert den Starttype vom ausgewählten Programm
Procedure Application_ChangeStartType()
 Static LApp.l
 
 If GetGadgetState(#G_TR_Preferences_Programs_List) <> -1
  If LApp <> GetGadgetState(#G_TR_Preferences_Programs_List) + 1
   LApp = GetGadgetState(#G_TR_Preferences_Programs_List) + 1
  Else
   SelectElement(Application(), GetGadgetState(#G_TR_Preferences_Programs_List))
   If Application()\StartT <> GetGadgetState(#G_CB_Preferences_Programs_StartType)
    Application()\StartT = GetGadgetState(#G_CB_Preferences_Programs_StartType)
   EndIf
  EndIf
 EndIf
EndProcedure

;Programme, verändert denn AutoStart Status vom ausgewählten Programm
Procedure Application_ChangeAutoStart()
 If GetGadgetState(#G_TR_Preferences_Programs_List) <> -1
  SelectElement(Application(), GetGadgetState(#G_TR_Preferences_Programs_List))
  Application()\AutoS = GetGadgetState(#G_CB_Preferences_Programs_AutoStart)
 EndIf
EndProcedure

;Programme, startet ein Programm
Procedure Application_Run(Application, StartFlag = -1)
 If ListSize(Application()) >= Application + 1 And Application > -1
  SelectElement(Application(), Application)
  If FileSize(ConvertString(Application()\Path)) > 0
   If StartFlag = -1
    If Application()\StartT = 0: StartFlag = #SW_NORMAL: EndIf
    If Application()\StartT = 1: StartFlag = #SW_MAXIMIZE: EndIf
    If Application()\StartT = 2: StartFlag = #SW_MINIMIZE: EndIf
    If Application()\StartT = 3: StartFlag = #SW_HIDE: EndIf
   EndIf
   FadeOut()
   ShellExecute_(#Null, "open", ConvertString(Application()\Path), ConvertString(Application()\Para), ConvertString(Application()\Work), StartFlag)
  EndIf
 EndIf
EndProcedure

;Programme, öffnet denn Programmordner
Procedure Application_Path(Application)
 Protected Path.s
 
 If ListSize(Application()) >= Application + 1 And Application > -1
  SelectElement(Application(), Application)
  Path = GetPathPart(ConvertString(Application()\Path))
  If FileSize(Path) = -2
   FadeOut()
   ShellExecute_(#Null, "explore", Path, "", "", #SW_SHOW)
  EndIf
 EndIf
EndProcedure

;Einstellungen, aktualisiert die aktuell ausgewählten Hotkey daten
Procedure Preferences_RefreshHotkey(Reset = 0)
 Protected Sel.l, x.l
 Static LSel.l
 
 If Reset = 1
  LSel = 0
  ProcedureReturn 0
 EndIf
 
 Sel = GetGadgetState(#G_LI_Preferences_Shortcuts_List)
 If Sel <> -1 And LSel <> Sel + 1
  LSel = Sel + 1
  SetGadgetState(#G_CH_Preferences_Shortcuts_Strg, Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, 1)))
  SetGadgetState(#G_CH_Preferences_Shortcuts_Alt, Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, 2)))
  SetGadgetState(#G_CH_Preferences_Shortcuts_Shift, Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, 3)))
  For x = 0 To #DIM_KeyCode
   If KeyCode(x)\Name = GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, 4)
    SetGadgetState(#G_CB_Preferences_Shortcuts_Hotkey, x)
    Break
   EndIf
  Next
  For x = #G_FR_Preferences_Shortcuts_Gap To #G_CB_Preferences_Shortcuts_Hotkey: HideGadget(x, 0): Next
 Else
  If Sel = -1 And LSel <> -1
   LSel = -1
   For x = #G_FR_Preferences_Shortcuts_Gap To #G_CB_Preferences_Shortcuts_Hotkey: HideGadget(x, 1): Next
  EndIf
 EndIf
EndProcedure

;Einstellungen, verändert denn aktuell ausgewählten Shortcut
Procedure Preferences_ChangeHotkey()
 Protected Sel.l

 Sel = GetGadgetState(#G_LI_Preferences_Shortcuts_List)
 If Sel <> -1
  Select L_ActiveGadget
   Case #G_CH_Preferences_Shortcuts_Strg
    SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, Str(GetGadgetState(#G_CH_Preferences_Shortcuts_Strg)), 1)
   Case #G_CH_Preferences_Shortcuts_Alt
    SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, Str(GetGadgetState(#G_CH_Preferences_Shortcuts_Alt)), 2)
   Case #G_CH_Preferences_Shortcuts_Shift
    SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, Str(GetGadgetState(#G_CH_Preferences_Shortcuts_Shift)), 3)
   Case #G_CB_Preferences_Shortcuts_Hotkey
    If GetGadgetState(#G_CB_Preferences_Shortcuts_Hotkey) <> -1
     SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, Sel, KeyCode(GetGadgetState(#G_CB_Preferences_Shortcuts_Hotkey))\Name, 4)
    EndIf
  EndSelect
 EndIf
EndProcedure

;Einstellungen, verändert das Systray Icon
Procedure Preferences_ChangeSysTrayIcon()
 If GetGadgetState(#G_CH_Preferences_Interface_SkinSystrayIcon) = #False
  DisableGadget(#G_TB_Preferences_Interface_SystrayIcon, #False)
  If ListSize(hSysTrayIcn()) >= GetGadgetState(#G_TB_Preferences_Interface_SystrayIcon)
   SelectElement(hSysTrayIcn(), GetGadgetState(#G_TB_Preferences_Interface_SystrayIcon))
  Else
   LastElement(hSysTrayIcn())
  EndIf
  SetGadgetState(#G_IG_Preferences_Interface_SystrayIcon, hSysTrayIcn())
 Else
  DisableGadget(#G_TB_Preferences_Interface_SystrayIcon, #True)
  SetGadgetState(#G_IG_Preferences_Interface_SystrayIcon, ImageID(#Icn_SysTray))
 EndIf
EndProcedure

;Einstellungen, verändert das Hintergrundbild
Procedure Preferences_ChangeWallpaperPath()
 Protected Result.s
 
 If FileSize(DriveLeter() + GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)) > 0
  Result = DriveLeter() + GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)
 Else
  Result = ExePath()
 EndIf
 
 Result = OpenFileRequester(#PrgName, Result, "Windows Bitmap|*.bmp|Alle Dateien|*.*", 0)
 If Result <> ""
  If Left(Result, 3) <> DriveLeter()
   MsgBox_Error(Language_GetString("MsgErr_PortableDriveFile")): ProcedureReturn 0
  EndIf
  
  If IsBitmap(Result)
   SetGadgetText(#G_SR_Preferences_Starting_Wallpaper, Right(Result, Len(Result) - 3))
  Else
   MsgBox_Error(Language_GetString("MsgErr_InvalidWallpaper")): ProcedureReturn 0
  EndIf
 EndIf
EndProcedure

;Versteckt alle Gadgets im Einstellungen Fenster
Procedure Preferences_HideAllGadgets()
 Protected x.l
 
 For x = #G_TR_Preferences_Programs_List To #G_CH_Preferences_Folder_BrowserStartPage
  HideGadget(x, #True)
 Next
EndProcedure

;Einstellungen, verändert denn Bereich
Procedure Preferences_ChangeArea(Reset = 0)
 Protected Sel.l, x.l
 Static LSel.l
 
 If Reset = 1
  Preferences_HideAllGadgets()
  LSel = 0
 EndIf
 
 Sel = GetGadgetState(#G_TR_Preferences_Categorie)
 If LSel <> Sel + 1 And Sel <> -1
  Preferences_HideAllGadgets()
  LSel = Sel + 1
  
  Select Sel
   Case 0 ;Programs
    For x = #G_TR_Preferences_Programs_List To #G_CB_Preferences_Programs_AutoStart
     If x <> #G_BI_Preferences_Programs_Warning
      HideGadget(x, #False)
     EndIf
    Next
    If ListSize(Application()) > 0: Application_CheckStatus(): EndIf
   Case 1 ;Starting
    For x = #G_CH_Preferences_Starting_ShowAtStart To #G_BN_Preferences_Starting_Wallpaper
     HideGadget(x, #False)
    Next
   Case 2 ;Interface
    For x = #G_TX_Preferences_Interface_Language To #G_OP_Preferences_Interface_ShwSpace
     HideGadget(x, #False)
    Next
   Case 3 ;Skin
    For x = #G_TX_Preferences_Skin_List To #G_IG_Preferences_Skin_Preview
     HideGadget(x, #False)
    Next
   Case 4 ;Programsmenu
    For x = #G_FR_Preferences_Menu_TAdjust To #G_CH_Preferences_Menu_ShwIcons
     HideGadget(x, #False)
    Next
   Case 5 ;Fonts
    For x = #G_TX_Preferences_Fonts_Title To #G_LI_Preferences_Fonts_List
     HideGadget(x, #False)
    Next
   Case 6 ;Shortcuts
    For x = #G_TX_Preferences_Shortcuts_Title To #G_LI_Preferences_Shortcuts_List
     HideGadget(x, #False)
    Next
    Preferences_RefreshHotkey(1)
    SetGadgetState(#G_LI_Preferences_Shortcuts_List, -1)
   Case 7 ;Folder
    For x = #G_TX_Preferences_Folder_OwnFiles To #G_CH_Preferences_Folder_BrowserStartPage
     HideGadget(x, #False)
    Next
  EndSelect
 EndIf
EndProcedure

;Einstellungen, Fensterinitialisierung
Procedure Preferences_InitWindow()
 Protected DirID.l, x.l, l.l
 
 ;// Kategorie auswählen und aktualisieren
 If GetGadgetState(#G_TR_Preferences_Categorie) = -1
  SetGadgetState(#G_TR_Preferences_Categorie, 0)
 EndIf
 Preferences_ChangeArea(1)
 
 ;// Programs
 If ListSize(Application()) <> CountGadgetItems(#G_TR_Preferences_Programs_List)
  ClearGadgetItems(#G_TR_Preferences_Programs_List)
  ForEach Application()
   AddGadgetItem(#G_TR_Preferences_Programs_List, -1, Application()\Name, Application()\IcnID)
  Next
 EndIf
 If CountGadgetItems(#G_TR_Preferences_Programs_List) > 0 And GetGadgetState(#G_TR_Preferences_Programs_List) <> -1
  Application_RefreshSel(): Application_CheckStatus()
 Else
  SetGadgetState(#G_TR_Preferences_Programs_List, -1): Application_RefreshSel(): Application_CheckStatus()
 EndIf
 
 ;// Starting
 SetGadgetState(#G_CH_Preferences_Starting_ShowAtStart, B_ShowAtStart)
 SetGadgetState(#G_CH_Preferences_Starting_OSTest, B_MsgOSTest)
 SetGadgetState(#G_CH_Preferences_Starting_CheckVersion, B_VersionCheck)
 SetGadgetState(#G_CH_Preferences_Starting_CheckApps, B_ShowAppErrors)
 
 SetGadgetState(#G_CH_Preferences_Starting_SafetycopyPrefs, B_SafetycopyPrefs)
 If B_SafetycopyType = 1
  SetGadgetState(#G_CH_Preferences_Starting_SafetycopyType1, #True)
 ElseIf B_SafetycopyType = 2
  SetGadgetState(#G_CH_Preferences_Starting_SafetycopyType2, #True)
 Else
  SetGadgetState(#G_CH_Preferences_Starting_SafetycopyType3, #True)
 EndIf
  
 For x = #G_CH_Preferences_Starting_SafetycopyType1 To #G_CH_Preferences_Starting_SafetycopyType3
  DisableGadget(x, B_SafetycopyPrefs!1)
 Next
  
 SetGadgetState(#G_CH_Preferences_Starting_WallpaperChange, B_ChangeWallpaper)
 SetGadgetText(#G_SR_Preferences_Starting_Wallpaper, S_Wallpaper)
 
 For x = #G_SR_Preferences_Starting_Wallpaper To #G_BN_Preferences_Starting_Wallpaper
  DisableGadget(x, B_ChangeWallpaper!1)
 Next
 
 ;// Interface
 ClearGadgetItems(#G_CB_Preferences_Interface_Language) ;Sprache
 DirID = ExamineDirectory(#PB_Any, ExePath() + #S_Folder + #S_FolderLanguage, "*.lng")
 If DirID <> 0
  While NextDirectoryEntry(DirID) <> 0
   If DirectoryEntryType(DirID) = #PB_DirectoryEntry_File
    AddGadgetItem(#G_CB_Preferences_Interface_Language, -1, GetFilePart(DirectoryEntryName(DirID)))
   EndIf
  Wend
  FinishDirectory(DirID)
 EndIf
 SetGadgetState(#G_CB_Preferences_Interface_Language, -1)
 For x = 0 To CountGadgetItems(#G_CB_Preferences_Interface_Language) - 1
  If UCase(GetGadgetItemText(#G_CB_Preferences_Interface_Language, x, 0)) = UCase(S_Language)
   SetGadgetState(#G_CB_Preferences_Interface_Language, x)
   Break
  EndIf
 Next
 
 ClearGadgetItems(#G_CB_Preferences_Skin_List) ;Skin
 DirID = ExamineDirectory(#PB_Any, ExePath() + #S_Folder + #S_FolderSkin, "*.skn")
 If DirID <> 0
  While NextDirectoryEntry(DirID)
   If DirectoryEntryType(DirID) = #PB_DirectoryEntry_File
    AddGadgetItem(#G_CB_Preferences_Skin_List, -1, GetFilePart(DirectoryEntryName(DirID)))
   EndIf
  Wend
  FinishDirectory(DirID)
 EndIf
 SetGadgetState(#G_CB_Preferences_Skin_List, -1)
 For x = 0 To CountGadgetItems(#G_CB_Preferences_Skin_List) - 1
  If UCase(GetGadgetItemText(#G_CB_Preferences_Skin_List, x, 0)) = UCase(S_Skin)
   SetGadgetState(#G_CB_Preferences_Skin_List, x)
   Break
  EndIf
 Next
 
 SetGadgetState(#G_CH_Preferences_Interface_SkinSystrayIcon, B_SkinSysTrayIcon)
 SetGadgetState(#G_TB_Preferences_Interface_SystrayIcon, B_SysTrayIcon)
 
 Preferences_ChangeSysTrayIcon()
  
 SetGadgetState(#G_CB_Preferences_Interface_Position, B_WindowPosition)
 SetGadgetState(#G_TB_Preferences_Interface_Distance, B_Gap)
 SetGadgetText(#G_TX_Preferences_Interface_DistanceAmount, Str(B_Gap))
 SetGadgetState(#G_CH_Preferences_Interface_Fading, B_Fading)
 SetGadgetState(#G_CH_Preferences_Interface_AlwaysOnTop, B_AlwaysOnTop)
 
 If B_ShowSpace = 0 ;Speicherplatzanzeige
  SetGadgetState(#G_OP_Preferences_Interface_ShwFreeSpace, #True)
  SetGadgetState(#G_OP_Preferences_Interface_ShwUsedSpace, #False)
 Else
  SetGadgetState(#G_OP_Preferences_Interface_ShwSpace, #False)
  SetGadgetState(#G_OP_Preferences_Interface_ShwUsedSpace, #True)
 EndIf
 If B_ShowSpaceType = 0
  SetGadgetState(#G_OP_Preferences_Interface_ShwPercent, #True)
  SetGadgetState(#G_OP_Preferences_Interface_ShwSpace, #False)
 Else
  SetGadgetState(#G_OP_Preferences_Interface_ShwPercent, #False)
  SetGadgetState(#G_OP_Preferences_Interface_ShwSpace, #True)
 EndIf
 
 ;// Skin
 Skin_RefreshInformation(1)
 
 ;// Programsmenu
 For x = #G_OP_Preferences_Menu_TAdjustLeft To #G_OP_Preferences_Menu_TAdjustRight: SetGadgetState(x, #False): Next
 SetGadgetState(#G_OP_Preferences_Menu_TAdjustLeft + B_AdjustMnu, #True)
 SetGadgetState(#G_TB_Preferences_Menu_DistanceBorder, B_DistBorder)
 SetGadgetState(#G_TB_Preferences_Menu_DistanceIcnTxt, B_DistIcnTxt)
 SetGadgetState(#G_CH_Preferences_Menu_ShwIcons, B_ShwIcons)
  
 ;// Fonts
 For x = 0 To #DIM_Fonts
  SetGadgetItemText(#G_LI_Preferences_Fonts_List, x, Font(x)\Name, 1)
  SetGadgetItemText(#G_LI_Preferences_Fonts_List, x, Str(Font(x)\Size), 2)
  SetGadgetItemText(#G_LI_Preferences_Fonts_List, x, Str(Font(x)\Style), 3)
  If x <> 3
   SetGadgetItemColor(#G_LI_Preferences_Fonts_List, x, #PB_Gadget_BackColor, Font(x)\Color, 4)
   SetGadgetItemColor(#G_LI_Preferences_Fonts_List, x, #PB_Gadget_FrontColor, InvertColor(Font(x)\Color), 4)
   SetGadgetItemText(#G_LI_Preferences_Fonts_List, x, LSet("#" + Hex(Font(x)\Color), 7, "0"), 4)
  EndIf
 Next
 SetGadgetState(#G_LI_Preferences_Fonts_List, -1)
 
 ;// Shortcuts
 For x = 0 To #DIM_Shortcut
  If Shortcut(x)\active = 1: SetGadgetItemState(#G_LI_Preferences_Shortcuts_List, x, #PB_ListIcon_Checked): EndIf
  SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, Str(Shortcut(x)\control), 1)
  SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, Str(Shortcut(x)\menu), 2)
  SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, Str(Shortcut(x)\shift), 3)
  For l = 0 To #DIM_KeyCode
   If KeyCode(l)\Code = Shortcut(x)\misc
    SetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, KeyCode(l)\Name, 4)
   EndIf
  Next l
 Next x
 SetGadgetState(#G_LI_Preferences_Shortcuts_List, -1)
  
 ;// Folder
 SetGadgetText(#G_SR_Preferences_Folder_FolderOwnFiles, S_OwnFiles)
 SetGadgetState(#G_CH_Preferences_Folder_MaximizeOwnFiles, B_MaximizeDocs)
 
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 0, S_Documents, 1)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 1, S_Music, 1)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 2, S_Pictures, 1)
 SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 3, S_Movies, 1)
 SetGadgetState(#G_LI_Preferences_Folder_OwnFilesFolderName, -1)
 
 SetGadgetText(#G_SR_Preferences_Folder_BrowserStartPage, S_StartPage)
 SetGadgetState(#G_CH_Preferences_Folder_BrowserStartPage, B_MaximizeStartPage)
EndProcedure

;Einstellungen, verändert denn Eigene Dateien Path
Procedure Preferences_ChangeOwnFilesPath()
 Protected NewDir.s
 
 NewDir = PathRequester("Dokumente Ordner:", DriveLeter() + GetGadgetText(#G_SR_Preferences_Folder_FolderOwnFiles))
 If NewDir <> ""
  If DriveLeter() <> Left(NewDir, 3)
   MsgBox_Error(Language_GetString("MsgErr_PortableDriveDir"))
  Else
   SetGadgetText(#G_SR_Preferences_Folder_FolderOwnFiles, Right(NewDir, Len(NewDir) - 3))
  EndIf
 EndIf
EndProcedure

;Einstellunge, verändert die Eigene Dateien Ordnernamen
Procedure Preferences_ChangeOwnFilesName()
 Protected Sel.l, Result.s
 
 Sel = GetGadgetState(#G_LI_Preferences_Folder_OwnFilesFolderName)
 If Sel <> -1
  Result = GetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, Sel, 1)
  Result = InputRequester(#PrgName, "Ordnername:", Result)
  
  If Result <> ""
   If CheckFilename(Result) = 1
    SetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, Sel, Result, 1)
   Else
    MsgBox_Error(Language_GetString("MsgErr_InvalidPath"))
    Preferences_ChangeOwnFilesName()
   EndIf
  EndIf
 EndIf
EndProcedure

;Einstellungen, Schriftart ändern
Procedure Preferences_ChangeFontStyle()
 Protected Sel.l
 
 Sel = GetGadgetState(#G_LI_Preferences_Fonts_List)
 If Sel <> -1
  If FontRequester(GetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, 1), Val(GetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, 2)), #Null) <> 0
   SetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, SelectedFontName(), 1)
   SetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, Str(SelectedFontSize()), 2)
   SetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, Str(SelectedFontStyle()|#PB_Font_HighQuality), 3)
  EndIf
 EndIf
EndProcedure

;Einstellungen, Schriftfarbe ändern
Procedure Preferences_ChangeFontColor()
 Protected Sel.l, Color.l
 
 Sel = GetGadgetState(#G_LI_Preferences_Fonts_List)
 If Sel <> -1
  Color = ColorRequester(GetGadgetItemColor(#G_LI_Preferences_Fonts_List, Sel, #PB_Gadget_BackColor, 4))
  If Color <> -1
   SetGadgetItemColor(#G_LI_Preferences_Fonts_List, Sel, #PB_Gadget_BackColor, Color, 4)
   SetGadgetItemColor(#G_LI_Preferences_Fonts_List, Sel, #PB_Gadget_FrontColor, InvertColor(Color), 4)
   SetGadgetItemText(#G_LI_Preferences_Fonts_List, Sel, LSet( "#" + Hex(Color), 7, "0"), 4)
  EndIf
 EndIf
EndProcedure

;Einstellungen, übernehmen
Procedure Preferences_Apply()
 Protected x.l, l.l, FontBool.l, HotkeyFlag.l
 
 ;// --- Programs ---
 L_ScrollMenu = 0
 
 ;// --- Starting ---
 B_ShowAtStart = GetGadgetState(#G_CH_Preferences_Starting_ShowAtStart)
 B_MsgOSTest = GetGadgetState(#G_CH_Preferences_Starting_OSTest)
 B_VersionCheck = GetGadgetState(#G_CH_Preferences_Starting_CheckVersion)
 B_ShowAppErrors = GetGadgetState(#G_CH_Preferences_Starting_CheckApps)
 
 B_SafetycopyPrefs = GetGadgetState(#G_CH_Preferences_Starting_SafetycopyPrefs)
 If GetGadgetState(#G_CH_Preferences_Starting_SafetycopyType1) = #True
  B_SafetycopyType = 1
 ElseIf GetGadgetState(#G_CH_Preferences_Starting_SafetycopyType2) = #True
  B_SafetycopyType = 2
 Else
  B_SafetycopyType = 3
 EndIf
 
 If (B_ChangeWallpaper = #True And GetGadgetState(#G_CH_Preferences_Starting_WallpaperChange) = #False) Or (S_Wallpaper = "") ;Wallpaper entfernen
  B_ChangeWallpaper = #False
  S_Wallpaper = GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)
  SetDeskopWallpaper(S_WallpaperOld)
 EndIf
 If (B_ChangeWallpaper = #False And GetGadgetState(#G_CH_Preferences_Starting_WallpaperChange) = #True And S_Wallpaper <> "") Or (S_Wallpaper <> GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)) ;Wallpaper setzen/ändern
  If FileSize(DriveLeter() + GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)) > 0
   B_ChangeWallpaper = GetGadgetState(#G_CH_Preferences_Starting_WallpaperChange)
   S_Wallpaper = GetGadgetText(#G_SR_Preferences_Starting_Wallpaper)
   SetDeskopWallpaper(DriveLeter() + S_Wallpaper)
  EndIf
 EndIf
 
 ;// --- Interface ---
 B_WindowPosition = GetGadgetState(#G_CB_Preferences_Interface_Position) ;Muss vor Sprache sein! Damit ausgewählter Eintrag bei Sprache laden nicht entfernt wird.
 
 If S_Language <> GetGadgetText(#G_CB_Preferences_Interface_Language)
  Language_Load(ExePath() + #S_Folder + #S_FolderLanguage + GetGadgetText(#G_CB_Preferences_Interface_Language))
  Language_Refresh()
  S_Language = GetGadgetText(#G_CB_Preferences_Interface_Language)
 EndIf
 
 B_Gap = GetGadgetState(#G_TB_Preferences_Interface_Distance)
 B_Fading = GetGadgetState(#G_CH_Preferences_Interface_Fading)
 B_AlwaysOnTop = GetGadgetState(#G_CH_Preferences_Interface_AlwaysOnTop)
  For x = #Win_Main To #Win_Error: Window_AlwaysOnTop(x, B_AlwaysOnTop): Next
 
 B_SkinSysTrayIcon = GetGadgetState(#G_CH_Preferences_Interface_SkinSystrayIcon)
 B_SysTrayIcon = GetGadgetState(#G_TB_Preferences_Interface_SystrayIcon)

 If GetGadgetState(#G_OP_Preferences_Interface_ShwFreeSpace) = #True
  B_ShowSpace = 0
 Else
  B_ShowSpace = 1
 EndIf
 If GetGadgetState(#G_OP_Preferences_Interface_ShwPercent) = #True
  B_ShowSpaceType = 0
 Else
  B_ShowSpaceType = 1
 EndIf
 
 If B_SkinSysTrayIcon = #False
  If ListSize(hSysTrayIcn()) >= B_SysTrayIcon
   SelectElement(hSysTrayIcn(), B_SysTrayIcon)
  Else
   LastElement(hSysTrayIcn())
  EndIf
  Skin_ChangeSysTrayIcon(hSysTrayIcn())
 EndIf
 
 ;// --- Skin ---
 If S_Skin <> GetGadgetText(#G_CB_Preferences_Skin_List) And FileSize(ExePath() + #S_Folder + #S_FolderSkin + GetGadgetText(#G_CB_Preferences_Skin_List)) > 0
  If Skin_Load(ExePath() + #S_Folder + #S_FolderSkin + GetGadgetText(#G_CB_Preferences_Skin_List)) = 0
   MsgBox_Error(Language_GetString("MsgErr_LoadSkin") + #CRLF$ + "'" + DriveLeter() + #S_Folder + #S_FolderSkin + GetGadgetText(#G_CB_Preferences_Skin_List) + "'")
   ProcedureReturn 0
  Else
   S_Skin = GetGadgetText(#G_CB_Preferences_Skin_List)
  EndIf
 EndIf
 If B_SkinSysTrayIcon = #True
  Skin_ChangeSysTrayIcon(ImageID(#Icn_SysTray))
 EndIf
 
 ;// --- Programsmenu ---
 If GetGadgetState(#G_OP_Preferences_Menu_TAdjustLeft) = #True
  B_AdjustMnu = 0
 ElseIf GetGadgetState(#G_OP_Preferences_Menu_TAdjustCenter) = #True
  B_AdjustMnu = 1
 Else
  B_AdjustMnu = 2
 EndIf
 
 B_DistBorder = GetGadgetState(#G_TB_Preferences_Menu_DistanceBorder)
 B_DistIcnTxt = GetGadgetState(#G_TB_Preferences_Menu_DistanceIcnTxt)
 B_ShwIcons = GetGadgetState(#G_CH_Preferences_Menu_ShwIcons)
  
 ;// --- Fonts ---
 FontBool = 0
 
 For x = 0 To #DIM_Fonts
  If GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 1) <> Font(x)\Name
   Font(x)\Name = GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 1): FontBool = 1
  EndIf
  If Val(GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 2)) <> Font(x)\Size
   Font(x)\Size = Val(GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 2)): FontBool = 1
  EndIf
  If Val(GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 3)) <> Font(x)\Style
   Font(x)\Style = Val(GetGadgetItemText(#G_LI_Preferences_Fonts_List, x, 3)): FontBool = 1
  EndIf
  If GetGadgetItemColor(#G_LI_Preferences_Fonts_List, x, #PB_Gadget_BackColor, 4) <> Font(x)\Color
   Font(x)\Color = GetGadgetItemColor(#G_LI_Preferences_Fonts_List, x, #PB_Gadget_BackColor, 4): FontBool = 1
  EndIf
 Next
 
 If FontBool = 1
  For x = 0 To #DIM_Fonts
   If IsFont(Font(x)\hFnt) <> 0: FreeFont(Font(x)\hFnt): EndIf
   Font(x)\hFnt = LoadFontEx(x, Font(x)\Name, Font(x)\Size, Font(x)\Style)
   Font(x)\Color = GetGadgetItemColor(#G_LI_Preferences_Fonts_List, x, #PB_Gadget_BackColor, 4)
  Next
  Interface_RefreshFonts(Font(3)\hFnt)
 EndIf
 
 ;// --- Shortcuts ---
 For x = 0 To #DIM_Shortcut
  If GetGadgetItemState(#G_LI_Preferences_Shortcuts_List, x) &#PB_ListIcon_Checked
   Shortcut(x)\active = 1
  Else
   Shortcut(x)\active = 0
  EndIf
  Shortcut(x)\control = Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, 1))
  Shortcut(x)\menu = Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, 2))
  Shortcut(x)\shift = Val(GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, 3))
  
  For l = 0 To #DIM_KeyCode
   If KeyCode(l)\Name = GetGadgetItemText(#G_LI_Preferences_Shortcuts_List, x, 4)
    Shortcut(x)\misc = KeyCode(l)\Code
   EndIf
  Next
 Next x
 
 ;// --- Folder ---
 S_OwnFiles = GetGadgetText(#G_SR_Preferences_Folder_FolderOwnFiles)
 S_Documents = GetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 0, 1)
 S_Music = GetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 1, 1)
 S_Pictures = GetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 2, 1)
 S_Movies = GetGadgetItemText(#G_LI_Preferences_Folder_OwnFilesFolderName, 3, 1)
 B_MaximizeDocs = GetGadgetState(#G_CH_Preferences_Folder_MaximizeOwnFiles)
 S_StartPage = GetGadgetText(#G_SR_Preferences_Folder_BrowserStartPage)
 B_MaximizeStartPage = GetGadgetState(#G_CH_Preferences_Folder_BrowserStartPage)

 If FileSize(DriveLeter() + S_OwnFiles) <> -2: CreateDirectory(DriveLeter() + S_OwnFiles): EndIf
 If FileSize(DriveLeter() + S_OwnFiles + S_Documents + "\") <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + S_Documents + "\"): EndIf
 If FileSize(DriveLeter() + S_OwnFiles + S_Music + "\") <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + S_Music + "\"): EndIf
 If FileSize(DriveLeter() + S_OwnFiles + S_Pictures + "\") <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + S_Pictures + "\"): EndIf
 If FileSize(DriveLeter() + S_OwnFiles + S_Movies + "\") <> -2: CreateDirectory(DriveLeter() + S_OwnFiles + S_Movies + "\"): EndIf
 
 If LCase(Left(GetGadgetText(#G_SR_Preferences_Folder_BrowserStartPage), 7)) <> "http://" Or Len(GetGadgetText(#G_SR_Preferences_Folder_BrowserStartPage)) < 8
  MsgBox_Error(Language_GetString("MsgErr_WrongHyperlink")): ProcedureReturn 0
 EndIf
 
 ProcedureReturn 1
EndProcedure

;Einstellungen, Schliesst das Fenster
Procedure Preferences_CloseWindow(Apply)
 Select Apply
  Case 0
   DisableWindow(#Win_Preferences, #True)
   HideWindow(#Win_Preferences, #True)
  Case 1
   If Preferences_Apply() = #True
    DisableWindow(#Win_Preferences, #True)
    HideWindow(#Win_Preferences, #True)
   EndIf
 EndSelect
EndProcedure

;Autorun, erstellt den Source
Procedure.s Autorun_GetSource()
 Protected Source.s
 
 ;Standard
 Source + "[AutoRun]" + #CRLF$
 Source + "Open = " + Right(ExePath(), Len(ExePath()) - 3) + ExeName() + #CRLF$
 If GetGadgetText(#G_SR_Autorun_DriveIcon) <> ""
  Source + "Icon = " + GetGadgetText(#G_SR_Autorun_DriveIcon)
 Else
  Source + "Icon = " + Right(ExePath(), Len(ExePath()) - 3) + ExeName()
 EndIf
 Source + ",0"
 ;Kontextmenü
 Source + #CRLF$
 Source + "Action = Launcher"
 ;Laufwerksname
 If GetGadgetText(#G_SR_Autorun_DriveName) <> ""
  Source + #CRLF$
  Source + "Label = " + GetGadgetText(#G_SR_Autorun_DriveName)
 EndIf
 ;Kontextmenü
 If GetGadgetState(#G_CH_Autorun_KontextEntry) = #True
  ;Doppelklick
  If GetGadgetState(#G_CH_Autorun_DoubleClick) = #True
   Source + #CRLF$
   Source + "Shell = LRun"
  EndIf
  Source + #CRLF$
  Source + "Shell\LRun\command = " + Right(ExePath(), Len(ExePath()) - 3) + ExeName() + #CRLF$
  Source + "Shell\LRun=Launcher"
 EndIf
 
 ProcedureReturn Source
EndProcedure

;Autorun, Initialisiert das AutorunCreator Fenster
Procedure Autorun_InitWindow()
 If FileSize(DriveLeter() + "Autorun.inf") > 0
  OpenPreferences(DriveLeter() + "Autorun.inf")
   PreferenceGroup("AutoRun")
    SetGadgetText(#G_SR_Autorun_DriveName, ReadPreferenceString("Label", #S_DefDriveName))
    SetGadgetText(#G_SR_Autorun_DriveIcon, ReadPreferenceString("Icon", ExePath()))
    If ReadPreferenceString("Action", "") = "Launcher"
     SetGadgetState(#G_CH_Autorun_KontextEntry, #True)
    Else
     SetGadgetState(#G_CH_Autorun_KontextEntry, #False)
    EndIf
    If ReadPreferenceString("Shell", "") = "LRun"
     SetGadgetState(#G_CH_Autorun_DoubleClick, #True)
    Else
     SetGadgetState(#G_CH_Autorun_DoubleClick, #False)
    EndIf
  ClosePreferences()
 Else
  SetGadgetText(#G_SR_Autorun_DriveName, #S_DefDriveName)
  SetGadgetText(#G_SR_Autorun_DriveIcon, Left(ExePath(), Len(ExePath()) - 3) + ExeName())
  SetGadgetState(#G_CH_Autorun_KontextEntry, #True)
  SetGadgetState(#G_CH_Autorun_DoubleClick, #False)
 EndIf
 SetGadgetText(#G_SR_Autorun_Preview, Autorun_GetSource())
EndProcedure

;Autorun, ändert das Icon
Procedure Autorun_ChangeDriveIcon()
 Protected Result.s, hIcon.l
 
 If FileSize(GetGadgetText(#G_SR_Autorun_DriveIcon)) > 0
  Result = GetGadgetText(#G_SR_Autorun_DriveIcon)
 Else
  Result = ExePath() + ExeName()
 EndIf
 
 Result = OpenFileRequester(#PrgName, Result, "Unterstützte Dateien|*.exe;*.dll;*.ico|Alle Dateien|*.*", 0)
 If Result <> ""
  If DriveLeter() = Left(Result, 3)
   If ExtractIcon_(GetModuleHandle_(0), Result, -1) > 0
    SetGadgetText(#G_SR_Autorun_DriveIcon, Right(Result, Len(Result) - 3))
    SetGadgetText(#G_SR_Autorun_Preview, Autorun_GetSource())
   Else
    MsgBox_Error(Language_GetString("MsgErr_NoIcons"))
   EndIf
  Else
   MsgBox_Error(Language_GetString("MsgErr_PortableDriveFile"))
  EndIf
 EndIf
EndProcedure

;Autorun, entfernt die Autorun
Procedure Autorun_Remove()
 If MessageRequester(#PrgName, Language_GetString("MsgAut_DeleteAutorun"), #MB_YESNO|#MB_ICONQUESTION) = #IDYES
 
  If FileSize(DriveLeter() + "Autorun.inf") > 0
   DeleteFile(DriveLeter() + "Autorun.inf")
  EndIf

 EndIf
EndProcedure

;Autorun, übernimmt die Einstellungen
Procedure Autorun_Apply()
 Protected hFile.l

 If FileSize(DriveLeter() + "Autorun.inf") > 0
  DeleteFile(DriveLeter() + "Autorun.inf")
 EndIf

 hFile = CreateFile(#PB_Any, DriveLeter() + "Autorun.inf")
 If hFile <> #False
  WriteString(hFile, Autorun_GetSource())

  CloseFile(hFile)
 EndIf
 
 DisableWindow(#Win_Autostart, #True)
 HideWindow(#Win_Autostart, #True)
EndProcedure

;Informationen, Animationsthread des Logos
Procedure Info_AnimLogo()
 Static LogoFrame.l
 
 If LogoFrame < #DIM_Logo
  LogoFrame + 1
 Else
  LogoFrame = 0
 EndIf
 SetGadgetState(#G_IG_Information_Logo, ImgLogo(LogoFrame))
EndProcedure

;Einblendeffekt fürs Fenster
Procedure FadeIn()
 Protected x.l, Timer.l
 
 If B_FadingBool = 0
  B_FadingBool = 1
  
  If B_WindowPosition = 0
   Window_CenterOnDesktop(#Win_Main)
  Else
   Window_Snap(#Win_Main, B_WindowPosition, B_Gap)
  EndIf
 
  RefreshWindow()
 
  If B_Fading = 0
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 255)
   HideWindow(#Win_Main, #False)
   SetActiveWindow(#Win_Main)
   SetForegroundWindow_(WindowID(#Win_Main))
  Else
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 0)
   HideWindow(#Win_Main, #False)
   For x = 0 To 255 Step 18
    Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, x): While WindowEvent(): Wend
    While timeGetTime_() - Timer <= #FadingTime: Delay(1): Wend
    Timer = timeGetTime_()
   Next
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 255)
   SetActiveWindow(#Win_Main)
   SetForegroundWindow_(WindowID(#Win_Main))
  EndIf
  
  SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayShow, Language_GetString("MnuItm_SysTShow_2"))
  
  B_FadingBool = 0
 EndIf
EndProcedure

;Ausblendeffekt fürs Fenster
Procedure FadeOut()
 Protected x.l, Timer.l
 
 If B_FadingBool = 0 And IsWindowVisible_(WindowID(#Win_Main)) = 1
  B_FadingBool = 1
  
  If B_Fading = 0
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 0)
   HideWindow(#Win_Main, #True)
  Else
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 255)
   HideWindow(#Win_Main, #False)
   For x = 255 To 0 Step -18
    Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, x): While WindowEvent(): Wend
    While timeGetTime_() - Timer <= #FadingTime: Delay(1): Wend
    Timer = timeGetTime_()
   Next
   Window_SetLayeredAttribute(#Win_Main, #L_LayerColor, 0)
   HideWindow(#Win_Main, #True)
  EndIf
  
  SetMenuItemText(#Menu_PopUp_SysTray, #Mnu_SysTrayShow, Language_GetString("MnuItm_SysTShow_1"))
  
  B_FadingBool = 0
 EndIf
EndProcedure

;Fenstereigene Messageroutine
Procedure WindowCallback(hWnd, Msg, wParam, lParam)
 Protected Result.l, *pMinMax.MINMAXINFO, x.l
 Result = #PB_ProcessPureBasicEvents
 
 If B_OnError = #False
  Select hWnd
   Case hWnd_Main
    If Msg = 12502 And LoWord(lParam) = #WM_LBUTTONDOWN And B_FirstStart = 0 ;SysTray
     If IsWindowVisible_(hWnd) = #False
      FadeIn()
     EndIf
    EndIf
    If Msg = #WM_KILLFOCUS
     If IsWindowVisible_(hWnd) = 1
      FadeOut()
     EndIf
    EndIf
   Case hWnd_Preferences, hWnd_Information, hWnd_Update, hWnd_SkinCreator, hWnd_Error, hWnd_Autorun
    If Msg = #WM_LBUTTONDOWN
     ReleaseCapture_()
     SendMessage_(hWnd, #WM_NCLBUTTONDOWN, #HTCAPTION, 0)
    EndIf
  EndSelect
 EndIf
 
 ProcedureReturn Result
EndProcedure

;Auf Neuer Version prüfen
Procedure CheckVersion(ShwMsg = 1)
 Protected hFile.l, sTempFile.s, lNewVers.l, lResult.l, sVers.s
 
 If ShwMsg = 1
  ClearGadgetItems(#G_LV_Update_Log)
  AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_OpenConnection"))
 EndIf
 
 If lInitNetwork = 0
  ;InitNetwork failed
  If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed")): EndIf
  lResult = 0
 Else
  sTempFile = GetTemporaryDirectory() + "~" + Str(Date()) + "-ce-" + Str(Random(1000)) + ".tmp" ;Create Temfilename
  If ReceiveHTTPFile(#S_URLVersion, sTempFile) <> 0 ;Download Updatefile
   If OpenPreferences(sTempFile) <> 0 ;Check..
    PreferenceGroup("version")
    lNewVers = ReadPreferenceLong("launcher", -1)
    If lNewVers = -1 Or lNewVers = 0 ;No Prefentry found
     AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed"))
     lResult = 0
    Else
     ;Check OK
     SetGadgetText(#G_TX_Update_Version_UseV, StrF(#PrgVers/100, 2))
     SetGadgetText(#G_TX_Update_Version_NewestV, StrF(lNewVers/100, 2))
     
     If lNewVers > #PrgVers ;New Version
      If ShwMsg = 1
       AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_NewVersion") + " " + StrF(lNewVers/100, 2))
      Else
       AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_NewVersion") + " " + StrF(lNewVers/100, 2))
       Window_Snap(#Win_Update, B_WindowPosition, B_Gap)
       DisableWindow(#Win_Update, #False)
       HideWindow(#Win_Update, #False)
      EndIf
     Else ;No Update
      If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_NoUpdate")): EndIf
     EndIf
     lResult = 1
    EndIf
    ClosePreferences()
    DeleteFile(sTempFile)
   Else
    AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed"))
    lResult = 0
   EndIf
  Else
   AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed"))
   lResult = 0
  EndIf
 EndIf
 
 ProcedureReturn lResult
; !! Alte Version !!
;  Protected Agent.s, hInet.l, hData.l, hFile.l, Bytes.l, URL.s
;  Protected Mem.l, MemSize.l, Version.l, FileList.s
;  
;  If ShwMsg = 1: ClearGadgetItems(#G_LV_Update_Log): EndIf
;  
;  Agent = "InetURL/1.0"
;  URL   = #S_URLVersion
;   
;  ;Verbingung aufbauen
;  If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_OpenConnection")): EndIf
;  hInet = InternetOpen_(@Agent.s, #Null, #Null, #Null, #Null)
;  If hInet = 0
;   If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed")): EndIf
;   ProcedureReturn 0
;  EndIf
;  
;  ;URL öffnen
;  hData = InternetOpenUrl_(hInet, @URL, "", #Null, $8000000, #Null)
;  If hData = 0
;   If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Failed")): EndIf
;   InternetCloseHandle_(hInet)
;   ProcedureReturn 0
;  EndIf
;  
;  ;Datei lesen
;  Mem = AllocateMemory(1048576) ;1MB
;  If Mem = 0
;   If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgErr_Memory")): EndIf
;   InternetCloseHandle_(hInet): InternetCloseHandle_(hData)
;   ProcedureReturn 0
;  EndIf
;  
;  If InternetReadFile_(hData, Mem, 1048576, @Bytes) = #False
;   If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_ReadData")): EndIf
;   InternetCloseHandle_(hInet): InternetCloseHandle_(hData)
;   ProcedureReturn 0
;  Else
;   Version = Val(PeekS(Mem, Bytes))
;  EndIf
;   
;  SetGadgetText(#G_TX_Update_Version_NewestV, StrF(Version/100, 2))
;     
;  If Version > #PrgVers
;   AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_NewVersion") + " " + StrF(Version/100, 2))
;   If ShwMsg = 0
;    Window_Snap(#Win_Update, B_WindowPosition, B_Gap)
;    DisableWindow(#Win_Update, #False)
;    HideWindow(#Win_Update, #False)
;   EndIf
;  Else
;   If ShwMsg = 1: AddGadgetItem(#G_LV_Update_Log, -1, Language_GetString("MsgUpd_NoUpdate")): EndIf
;  EndIf
;  
;  InternetCloseHandle_(hInet): InternetCloseHandle_(hData): FreeMemory(Mem)
;  
;  ProcedureReturn 1
EndProcedure

;Programmende
Procedure Beenden()
 Protected x.l
 
 ;Fenster ausblenden
 For x = #Win_Preferences To #Win_Error: HideWindow(x, #True): Next
 FadeOut()
 ;Einstellungen speichern
 Preferences_Save()
 ;Einstellungen sichern
 If B_SafetycopyPrefs = 1 And FileSize(ExePath() + #S_Folder + #S_FilePref) > 0
  ;Beim Beenden
  If B_SafetycopyType = 2
   S_LastSavetycopyPrefs = FormatDate("%dd%mm%yy", Date())
   CopyFile(ExePath() + #S_Folder + #S_FilePref, ExePath() + #S_Folder + #S_FilePrefBckup)
  EndIf
  ;Einmal am Tag
  If B_SafetycopyType = 3 And S_LastSavetycopyPrefs <> FormatDate("%dd%mm%yy", Date())
   S_LastSavetycopyPrefs = FormatDate("%dd%mm%yy", Date())
   CopyFile(ExePath() + #S_Folder + #S_FilePref, ExePath() + #S_Folder + #S_FilePrefBckup)
  EndIf
 EndIf
 ;Ressourcen freigeben
 If L_BackroundBrush <> 0: DeleteObject_(L_BackroundBrush): EndIf
 ForEach Application()
  If Application()\IcnID <> Icn_AppAdd: DestroyIcon_(Application()\IcnID): EndIf
 Next
 DestroyIcon_(Icn_Main)
 DestroyIcon_(Icn_Accept)
 DestroyIcon_(Icn_Cancel)
 DestroyIcon_(Icn_AppAdd)
 DestroyIcon_(Icn_AppDel)
 DestroyIcon_(Icn_AppDef)
 DestroyIcon_(Icn_AppUp)
 DestroyIcon_(Icn_AppDown)
 DestroyIcon_(Icn_AppSort)
 DestroyIcon_(Icn_Warning)
 DestroyIcon_(Icn_Programs)
 DestroyIcon_(Icn_Starting)
 DestroyIcon_(Icn_Interface)
 DestroyIcon_(Icn_Skin)
 DestroyIcon_(Icn_Programmenu)
 DestroyIcon_(Icn_Fonts)
 DestroyIcon_(Icn_Shortcuts)
 DestroyIcon_(Icn_Folder)
 DestroyIcon_(Icn_Update)
 DestroyIcon_(Icn_SkinCreator)
 DestroyIcon_(Icn_Autorun)
 ForEach hSysTrayIcn(): DestroyIcon_(hSysTrayIcn()): Next
 DeleteObject_(Img_Autor)
 DeleteObject_(Img_Error)
 For x = 0 To #DIM_Logo: DeleteObject_(ImgLogo(x)): Next
 CloseHandle_(L_hSemaphore)
 ;Wallpaper zurücksetzen
 SetDeskopWallpaper(S_WallpaperOld)
 ;Beenden
 End
EndProcedure

;Programmstart
Procedure Start()
 Protected StartFlag.l
 
 ;OnError
 OnErrorCall(@ErrorHandler())
 
 ;Überprüfung des MD5 Fingerprint
 ;If MD5FileFingerprint(ExeName()) <> #S_MD5Fingerprint
 ; MsgBox_Error("MD5 Fingerprint überprüfung fehlgeschlagen")
 ; End
 ;EndIf
 
 ;Überprüfen ob Launcher bereits läuft
 L_hSemaphore = CreateSemaphore_(#Null, #Null, 1, "61CCA679-C424-4B7A-A9CA-A7B643802EAB")
 If L_hSemaphore <> 0 And GetLastError_() = #ERROR_ALREADY_EXISTS
  CloseHandle_(L_hSemaphore)
  End
 EndIf
 
 ;Einstellungen und Sprache laden
 Preferences_Load()
 Language_Load(ExePath() + #S_Folder + #S_FolderLanguage + S_Language)
 Language_Refresh()
 
 ;Lizens
 If B_FirstStart = 1
  If MessageRequester("Lizens", #PrgLizens, #MB_YESNO|#MB_ICONEXCLAMATION) = #IDNO
   End
  Else
   B_FirstStart = 0
  EndIf
 EndIf
 
 ;Betriebsystem überprüfen
 If B_MsgOSTest = 1 And (OSVersion() < #PB_OS_Windows_NT_4 Or OSVersion() > #PB_OS_Windows_Future)
  If MessageRequester("Fehler", Language_GetString("MsgErr_WrongOS"), #MB_YESNO|#MB_ICONEXCLAMATION) = #IDNO
   End
  EndIf
 EndIf
 
 ;Shortcuts
 AddKeyboardShortcut(#Win_Main,        #PB_Shortcut_Escape, #Mnu_Escape_Main)
 AddKeyboardShortcut(#Win_Preferences, #PB_Shortcut_Escape, #Mnu_Escape_Preferences)
 AddKeyboardShortcut(#Win_Information, #PB_Shortcut_Escape, #Mnu_Escape_Information)
 AddKeyboardShortcut(#Win_Update,      #PB_Shortcut_Escape, #Mnu_Escape_Update)
 AddKeyboardShortcut(#Win_SkinCreator, #PB_Shortcut_Escape, #Mnu_Escape_SkinCreator)
 AddKeyboardShortcut(#Win_Autostart,   #PB_Shortcut_Escape, #Mnu_Escape_AutoStart)
 AddKeyboardShortcut(#Win_Error,       #PB_Shortcut_Escape, #Mnu_Escape_Error)
 
 ;Fenstercallback
 SetWindowCallback(@WindowCallback())
 
 ;Bei Start anzeigen
 If B_ShowAtStart = 1
  FadeIn()
 Else
  SetActiveWindow(#Win_Main)
 EndIf
 
 ;VersionCheck
 If B_VersionCheck = 1
  CheckVersion(0)
 EndIf
 
 ;Einstellungen sichern
 If B_SafetycopyPrefs = 1 And FileSize(ExePath() + #S_Folder + #S_FilePref) > 0
  ;Beim Start
  If B_SafetycopyType = 1
   S_LastSavetycopyPrefs = FormatDate("%dd%mm%yy", Date())
   CopyFile(ExePath() + #S_Folder + #S_FilePref, ExePath() + #S_Folder + #S_FilePrefBckup)
  EndIf
  ;Einmal am Tag
  If B_SafetycopyType = 3 And (S_LastSavetycopyPrefs <> FormatDate("%dd%mm%yy", Date()) Or FileSize(ExePath() + #S_Folder + #S_FilePrefBckup) <= 0)
   S_LastSavetycopyPrefs = FormatDate("%dd%mm%yy", Date())
   CopyFile(ExePath() + #S_Folder + #S_FilePref, ExePath() + #S_Folder + #S_FilePrefBckup)
  EndIf
 EndIf
 
 ;Wallpaper
 S_WallpaperOld = GetDesktopWallpaper()
 If B_ChangeWallpaper = 1 And S_Wallpaper <> ""
  SetDeskopWallpaper(DriveLeter() + S_Wallpaper)
 EndIf
 
 ;Autostartfunktion der Programme
 ForEach Application()
  If FileSize(ConvertString(Application()\Path)) > 0 And Application()\AutoS = #True
   If Application()\StartT = 0: StartFlag = #SW_NORMAL: EndIf
   If Application()\StartT = 1: StartFlag = #SW_MAXIMIZE: EndIf
   If Application()\StartT = 2: StartFlag = #SW_MINIMIZE: EndIf
   If Application()\StartT = 3: StartFlag = #SW_HIDE: EndIf
   ShellExecute_(#Null, "open", ConvertString(Application()\Path), ConvertString(Application()\Para), ConvertString(Application()\Work), StartFlag)
  EndIf
 Next
 
 ;SysTray
 If B_SkinSysTrayIcon = #True
  Skin_ChangeSysTrayIcon(ImageID(#Icn_SysTray))
 Else
  If ListSize(hSysTrayIcn()) >= B_SysTrayIcon
   SelectElement(hSysTrayIcn(), B_SysTrayIcon)
  Else
   LastElement(hSysTrayIcn())
  EndIf
  Skin_ChangeSysTrayIcon(hSysTrayIcn())
 EndIf
EndProcedure

;- Programmschleife -----------------------------------------------------------------------------------------------------------------------
Start()

Repeat
 L_WindowEvent  = WaitWindowEvent(10)
 L_EventWindow  = EventWindow()
 L_EventGadget  = EventGadget()
 L_EventMenu    = EventMenu()
 L_EventType    = EventType()
 L_EventwParam  = EventwParam()
 L_EventlParam  = EventlParam()
 L_ActiveWin    = GetActiveWindow()
 L_ActiveGadget = GetActiveGadget()
 L_WinMouseX    = WindowMouseX(#Win_Main)
 L_WinMouseY    = WindowMouseY(#Win_Main)
 
 ;Zurücksetzen der Grafiken
 If L_ActiveWin = #Win_Main And L_WinMouseX = -1 Or L_WinMouseY = -1
  If GetGadgetState(#G_IG_Main_Drive) <> ImageID(#Img_Drive): SetGadgetState(#G_IG_Main_Drive, ImageID(#Img_Drive)): EndIf
  If GetGadgetState(#G_IG_Main_OwnFiles) <> ImageID(#Img_OwnFiles): SetGadgetState(#G_IG_Main_OwnFiles, ImageID(#Img_OwnFiles)): EndIf
  If GetGadgetState(#G_IG_Main_Documents) <> ImageID(#Img_Documents): SetGadgetState(#G_IG_Main_Documents, ImageID(#Img_Documents)): EndIf
  If GetGadgetState(#G_IG_Main_Music) <> ImageID(#Img_Music): SetGadgetState(#G_IG_Main_Music, ImageID(#Img_Music)): EndIf
  If GetGadgetState(#G_IG_Main_Pictures) <> ImageID(#Img_Pictures): SetGadgetState(#G_IG_Main_Pictures, ImageID(#Img_Pictures)): EndIf
  If GetGadgetState(#G_IG_Main_Movies) <> ImageID(#Img_Movies): SetGadgetState(#G_IG_Main_Movies, ImageID(#Img_Movies)): EndIf
  If GetGadgetState(#G_IG_Main_Search) <> ImageID(#Img_Search): SetGadgetState(#G_IG_Main_Search, ImageID(#Img_Search)): EndIf
  If GetGadgetState(#G_IG_Main_Preferences) <> ImageID(#Img_Preferences): SetGadgetState(#G_IG_Main_Preferences, ImageID(#Img_Preferences)): EndIf
  If GetGadgetState(#G_IG_Main_Misc) <> ImageID(#Img_Misc): SetGadgetState(#G_IG_Main_Misc, ImageID(#Img_Misc)): EndIf
  If GetGadgetState(#G_IG_Main_End) <> ImageID(#Img_End): SetGadgetState(#G_IG_Main_End, ImageID(#Img_End)): EndIf
  For x = 0 To 19
   If GetGadgetState(#G_IG_Main_MnuStart + x) <> ImageID(MnuImage(x)\Normal): SetGadgetState(#G_IG_Main_MnuStart + x, ImageID(MnuImage(x)\Normal)): EndIf
  Next
 EndIf
 
 ;Sicherheitsabfrage um das Hauptfenster immer zu schliessen bei inaktiven Zustand
 If IsWindowVisible_(WindowID(#Win_Main)) = #True And L_ActiveWin <> #Win_Main
  FadeOut()
 EndIf
 
 ;Shortcuts
 For x = 0 To #DIM_Shortcut
  If Shortcut(x)\active = 1
   Select x
    Case 0 ;MainWindow
     If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
      If B_ShortcutFlag = 0
       B_ShortcutFlag = 1: B_ShortcutLast = x
       Debug "Launcher Show/Hide"
       If IsWindowVisible_(WindowID(#Win_Main)) = 0
        FadeIn()
       Else
        FadeOut()
       EndIf
      EndIf
     Else
      If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
     EndIf
    Case 1 ;ProgramsUp
     If L_ActiveWin = #Win_Main
      If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
       If B_ShortcutFlag = 0
        B_ShortcutFlag = 1: B_ShortcutLast = x
        AppMenu_Up(): Debug "AppMenu_Up()"
       EndIf
      Else
       If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
      EndIf
     EndIf
    Case 2 ;ProgramsDown
     If L_ActiveWin = #Win_Main
      If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
       If B_ShortcutFlag = 0
        B_ShortcutFlag = 1: B_ShortcutLast = x
        AppMenu_Down(): Debug "AppMenu_Down()"
       EndIf
      Else
       If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
      EndIf
     EndIf
    Case 3 ;Preferences Programs
     If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
      If B_ShortcutFlag = 0
       B_ShortcutFlag = 1: B_ShortcutLast = x
       Debug "Preferences Programs"
       FadeOut()
       If IsWindowVisible_(WindowID(#Win_Preferences)) = #False
        SetGadgetState(#G_TR_Preferences_Categorie, 0)
        Preferences_InitWindow()
        If B_WindowPosition = 0
         Window_CenterOnDesktop(#Win_Preferences)
        Else
         Window_Snap(#Win_Preferences, B_WindowPosition, B_Gap)
        EndIf
        DisableWindow(#Win_Preferences, #False)
        HideWindow(#Win_Preferences, #False)
       Else
        SetGadgetState(#G_TR_Preferences_Categorie, 0)
        SetForegroundWindow_(WindowID(#Win_Preferences))
       EndIf
      EndIf
     Else
      If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
     EndIf
    Case 4 ;Preferences Main
     If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
      If B_ShortcutFlag = 0
       B_ShortcutFlag = 1: B_ShortcutLast = x
       Debug "Preferences Main"
       FadeOut()
       If IsWindowVisible_(WindowID(#Win_Preferences)) = #False
        SetGadgetState(#G_TR_Preferences_Categorie, 1)
        Preferences_InitWindow()
        If B_WindowPosition = 0
         Window_CenterOnDesktop(#Win_Preferences)
        Else
         Window_Snap(#Win_Preferences, B_WindowPosition, B_Gap)
        EndIf
        DisableWindow(#Win_Preferences, #False)
        HideWindow(#Win_Preferences, #False)
       Else
        SetGadgetState(#G_TR_Preferences_Categorie, 1)
        SetForegroundWindow_(WindowID(#Win_Preferences))
       EndIf
      EndIf
     Else
      If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
     EndIf
    Case 5 ;Beenden
     If GetAsyncKeyStateShortcut(Shortcut(x)\control, Shortcut(x)\menu, Shortcut(x)\shift, Shortcut(x)\misc) <> 0
      If B_ShortcutFlag = 0
       B_ShortcutFlag = 1: B_ShortcutLast = x
       Beenden()
      EndIf
     Else
      If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
     EndIf
   EndSelect
  EndIf
 Next
 
 Select L_WindowEvent
  ;- WM_MouseMove -------------------------------------------------------------------------------------------------------------------------
  Case #WM_MOUSEMOVE
   If L_ActiveWin = #Win_Main
    ;Drive
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 46 And L_WinMouseY < 78
     If GetGadgetState(#G_IG_Main_Drive) <> ImageID(#Img_Drive_Over): SetGadgetState(#G_IG_Main_Drive, ImageID(#Img_Drive_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Drive) <> ImageID(#Img_Drive): SetGadgetState(#G_IG_Main_Drive, ImageID(#Img_Drive)): EndIf
    EndIf
    ;OwnFiles
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 81 And L_WinMouseY < 113
     If GetGadgetState(#G_IG_Main_OwnFiles) <> ImageID(#Img_OwnFiles_Over): SetGadgetState(#G_IG_Main_OwnFiles, ImageID(#Img_OwnFiles_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_OwnFiles) <> ImageID(#Img_OwnFiles): SetGadgetState(#G_IG_Main_OwnFiles, ImageID(#Img_OwnFiles)): EndIf
    EndIf
    ;Documents
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 116 And L_WinMouseY < 148
     If GetGadgetState(#G_IG_Main_Documents) <> ImageID(#Img_Documents_Over): SetGadgetState(#G_IG_Main_Documents, ImageID(#Img_Documents_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Documents) <> ImageID(#Img_Documents): SetGadgetState(#G_IG_Main_Documents, ImageID(#Img_Documents)): EndIf
    EndIf
    ;Music
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 151 And L_WinMouseY < 183
     If GetGadgetState(#G_IG_Main_Music) <> ImageID(#Img_Music_Over): SetGadgetState(#G_IG_Main_Music, ImageID(#Img_Music_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Music) <> ImageID(#Img_Music): SetGadgetState(#G_IG_Main_Music, ImageID(#Img_Music)): EndIf
    EndIf
    ;Pictures
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 186 And L_WinMouseY < 218
     If GetGadgetState(#G_IG_Main_Pictures) <> ImageID(#Img_Pictures_Over): SetGadgetState(#G_IG_Main_Pictures, ImageID(#Img_Pictures_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Pictures) <> ImageID(#Img_Pictures): SetGadgetState(#G_IG_Main_Pictures, ImageID(#Img_Pictures)): EndIf
    EndIf
    ;Movies
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 221 And L_WinMouseY < 253
     If GetGadgetState(#G_IG_Main_Movies) <> ImageID(#Img_Movies_Over): SetGadgetState(#G_IG_Main_Movies, ImageID(#Img_Movies_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Movies) <> ImageID(#Img_Movies): SetGadgetState(#G_IG_Main_Movies, ImageID(#Img_Movies)): EndIf
    EndIf
    ;Search
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 256 And L_WinMouseY < 288
     If GetGadgetState(#G_IG_Main_Search) <> ImageID(#Img_Search_Over): SetGadgetState(#G_IG_Main_Search, ImageID(#Img_Search_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Search) <> ImageID(#Img_Search): SetGadgetState(#G_IG_Main_Search, ImageID(#Img_Search)): EndIf
    EndIf
    ;Einstellungen
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 294 And L_WinMouseY < 326
     If GetGadgetState(#G_IG_Main_Preferences) <> ImageID(#Img_Preferences_Over): SetGadgetState(#G_IG_Main_Preferences, ImageID(#Img_Preferences_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Preferences) <> ImageID(#Img_Preferences): SetGadgetState(#G_IG_Main_Preferences, ImageID(#Img_Preferences)): EndIf
    EndIf    
    ;Weiteres
    If L_WinMouseX >= 270 And L_WinMouseX < 390 And L_WinMouseY >= 329 And L_WinMouseY < 361
     If GetGadgetState(#G_IG_Main_Misc) <> ImageID(#Img_Misc_Over): SetGadgetState(#G_IG_Main_Misc, ImageID(#Img_Misc_Over)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_Misc) <> ImageID(#Img_Misc): SetGadgetState(#G_IG_Main_Misc, ImageID(#Img_Misc)): EndIf
    EndIf
    ;Beenden Button
    If L_WinMouseX >= 310 And L_WinMouseX < 390 And L_WinMouseY >= 526 And L_WinMouseY < 551
     If GetGadgetState(#G_IG_Main_End) <> ImageID(#Img_EndOver): SetGadgetState(#G_IG_Main_End, ImageID(#Img_EndOver)): EndIf
    Else
     If GetGadgetState(#G_IG_Main_End) <> ImageID(#Img_End): SetGadgetState(#G_IG_Main_End, ImageID(#Img_End)): EndIf
    EndIf
    ;Programmmenü
    For x = 0 To 19
     If ListSize(Application()) - 1 >= x
      If L_WinMouseX >= 10 And L_WinMouseX < 260 And L_WinMouseY >= 46 + (x * 24) And L_WinMouseY < 46 + (x * 24) + 24
       If GetGadgetState(#G_IG_Main_MnuStart + x) <> ImageID(MnuImage(x)\Over)
        SetGadgetState(#G_IG_Main_MnuStart + x, ImageID(MnuImage(x)\Over))
       EndIf
      Else
       If GetGadgetState(#G_IG_Main_MnuStart + x) <> ImageID(MnuImage(x)\Normal)
        SetGadgetState(#G_IG_Main_MnuStart + x, ImageID(MnuImage(x)\Normal))
       EndIf
      EndIf
     EndIf
    Next
   EndIf
   ;FastHelp
   If L_ActiveWin = #Win_Preferences
    P\x = WindowMouseX(#Win_Preferences)
    P\y = WindowMouseY(#Win_Preferences)
    L_FastHelpGadget = ChildWindowFromPointEx_(hWnd_Preferences, @P, #CWP_SKIPINVISIBLE)
    If L_FastHelpGadget = 0
     If L_LFastHelpGadget <> 0 And GetGadgetText(#G_TX_Preferences_FastHelp) <> ""
      L_LFastHelpGadget = 0
      SetGadgetText(#G_TX_Preferences_FastHelp, "")
     EndIf
    Else
     If L_LFastHelpGadget <> L_FastHelpGadget
      L_LFastHelpGadget = L_FastHelpGadget
      SetGadgetText(#G_TX_Preferences_FastHelp, GetGadgetToolTip(L_FastHelpGadget))
     EndIf
    EndIf
   EndIf
  ;- WM_MouseWhell ------------------------------------------------------------------------------------------------------------------------
  Case #WM_MOUSEWHEEL
   If L_ActiveWin = #Win_Main
    If L_EventwParam < 0: AppMenu_Down(): Else: AppMenu_Up(): EndIf
   EndIf
  ;- PB_Event_Menu ------------------------------------------------------------------------------------------------------------------------
  Case #PB_Event_Menu
   Select L_EventMenu
    Case #Mnu_SearchDrive
     FadeOut(): ShellExecute_(#Null, "find", DriveLeter(), #Null, #Null, #SW_SHOW)
    Case #Mnu_SearchFolder
     FadeOut(): ShellExecute_(#Null, "find", ExePath(), #Null, #Null, #SW_SHOW)
    Case #Mnu_SearchOwnFiles
     If FileSize(DriveLeter() + S_OwnFiles) = -2
      FadeOut()
      ShellExecute_(#Null, "find", DriveLeter() + S_OwnFiles, #Null, #Null, #SW_SHOW)
     EndIf
    Case #Mnu_SearchComputer
     FadeOut(): ShellExecute_(#Null, "find", "C:\", #Null, #Null, #SW_SHOW)
    Case #Mnu_SearchINET
     FadeOut()
     If B_MaximizeStartPage = #True
      ShellExecute_(#Null, "open", S_StartPage, #Null, #Null, #SW_MAXIMIZE)
     Else
      ShellExecute_(#Null, "open", S_StartPage, #Null, #Null, #SW_SHOW)
     EndIf
    Case #Mnu_PrgStartNormal
     Application_Run(L_ActivePrg, #SW_NORMAL)
    Case #Mnu_PrgStartMaximize
     Application_Run(L_ActivePrg, #SW_MAXIMIZE)
    Case #Mnu_PrgStartMinimize
     Application_Run(L_ActivePrg, #SW_MINIMIZE)
    Case #Mnu_PrgPath
     Application_Path(L_ActivePrg)
    Case #Mnu_PrgPreferences
     FadeOut()
     If IsWindowVisible_(WindowID(#Win_Preferences)) = #False
      Preferences_InitWindow()
      Window_Snap(#Win_Preferences, B_WindowPosition, B_Gap)
      DisableWindow(#Win_Preferences, #False)
      HideWindow(#Win_Preferences, #False)
     EndIf
     If GetGadgetState(#G_TR_Preferences_Categorie) <> 0
      SetGadgetState(#G_TR_Preferences_Categorie, 0)
      Preferences_ChangeArea(1)
     EndIf
     If GetGadgetState(#G_TR_Preferences_Programs_List) <> L_ActivePrg
      SetGadgetState(#G_TR_Preferences_Programs_List, L_ActivePrg)
      Application_RefreshSel()
     EndIf
     SetForegroundWindow_(WindowID(#Win_Preferences))
    Case #Mnu_PrgScrollUp
     L_ScrollMenu = 0
     AppMenu_Redraw()
    Case #Mnu_PrgScrollDown
     L_ScrollMenu = ListSize(Application()) - 20
     If L_ScrollMenu < 0: L_ScrollMenu = 0: EndIf
     AppMenu_Redraw()
    Case #Mnu_MiscHelp
     If FileSize(ExePath() + #S_Folder + #S_FileHelp) > 0
      FadeOut()
      OpenHelp(ExePath() + #S_Folder + #S_FileHelp, "")
     EndIf
    Case #Mnu_MiscWebsite
     FadeOut(): ShellExecute_(#Null, "open", #S_URLProjekt, #Null, #Null, #SW_SHOW)
    Case #Mnu_MiscUpdate, #Mnu_SysTrayUpdate
     If IsWindowVisible_(WindowID(#Win_Update)) = #False
      FadeOut()
      ClearGadgetItems(#G_LV_Update_Log)
      SetGadgetText(#G_TX_Update_Version_NewestV, "-")
      Window_Snap(#Win_Update, B_WindowPosition, B_Gap)
      DisableWindow(#Win_Update, #False)
      HideWindow(#Win_Update, #False)
     Else
      FadeOut()
      SetForegroundWindow_(WindowID(#Win_Update))
     EndIf
    Case #Mnu_MiscSkinCreator
     If IsWindowVisible_(WindowID(#Win_SkinCreator)) = #False
      FadeOut()
      Skin_InitWindow()
      Window_Snap(#Win_SkinCreator, B_WindowPosition, B_Gap)
      DisableWindow(#Win_SkinCreator, #False)
      HideWindow(#Win_SkinCreator, #False)
     Else
      FadeOut()
      SetForegroundWindow_(WindowID(#Win_SkinCreator))
     EndIf
    Case #Mnu_MiscAutorunCreator
     If IsWindowVisible_(WindowID(#Win_Autostart)) = #False
      FadeOut()
      Autorun_InitWindow()
      Window_Snap(#Win_Autostart, B_WindowPosition, B_Gap)
      DisableWindow(#Win_Autostart, #False)
      HideWindow(#Win_Autostart, #False)
     Else
      FadeOut()
      SetForegroundWindow_(WindowID(#Win_Autostart))
     EndIf    
    Case #Mnu_MiscInformation, #Mnu_SysTrayAbout
     If IsWindowVisible_(WindowID(#Win_Information)) = #False
      SetTimer_(WindowID(#Win_Information), #Timer_InfoLogo, 80, @Info_AnimLogo())
      FadeOut()
      SetGadgetAttribute(#G_SA_Information_Data, #PB_ScrollArea_Y, 0)
      Window_Snap(#Win_Information, B_WindowPosition, B_Gap)
      DisableWindow(#Win_Information, #False)
      HideWindow(#Win_Information, #False)
      SetForegroundWindow_(WindowID(#Win_Information))
     Else
      FadeOut()
      SetForegroundWindow_(WindowID(#Win_Information))
     EndIf
    Case #Mnu_SysTrayShow
     If B_ShortcutLast = x: B_ShortcutFlag = 0: EndIf
     If IsWindowVisible_(WindowID(#Win_Main)) = 0
      FadeIn()
     Else
      FadeOut()
     EndIf
    Case #Mnu_SysTrayPreferences
     If IsWindowVisible_(WindowID(#Win_Preferences)) = #False
      FadeOut()
      Preferences_InitWindow()
      Window_Snap(#Win_Preferences, B_WindowPosition, B_Gap)
      DisableWindow(#Win_Preferences, #False)
      HideWindow(#Win_Preferences, #False)
      SetForegroundWindow_(WindowID(#Win_Preferences))
     Else
      FadeOut()
      SetForegroundWindow_(WindowID(#Win_Preferences))
     EndIf
    Case #Mnu_SysTrayEnd
     Beenden()
    Case #Mnu_FontsFont
     Preferences_ChangeFontStyle()
    Case #Mnu_FontsColor
     Preferences_ChangeFontColor()
    Case #Mnu_OwnFilesStart To #Mnu_OwnFilesStart + L_OwnFilesMenuCounter
     FadeOut()
     ShellExecute_(#Null, "open", DriveLeter() + S_OwnFiles + GetMenuItemText(#Menu_PopUp_OwnFiles, L_EventMenu), #Null, #Null, #SW_SHOW)
    Case #Mnu_Escape_Main
     If IsWindowVisible_(WindowID(#Win_Main)) = 1
      FadeOut()
     EndIf
    Case #Mnu_Escape_Preferences
     If IsWindowVisible_(WindowID(#Win_Preferences)) = 1
      Preferences_CloseWindow(0)
     EndIf
    Case #Mnu_Escape_Information
     If IsWindowVisible_(WindowID(#Win_Information)) = 1
      DisableWindow(#Win_Information, #True)
      HideWindow(#Win_Information, #True)
      KillTimer_(WindowID(#Win_Information), #Timer_InfoLogo)
     EndIf
    Case #Mnu_Escape_Update
     If IsWindowVisible_(WindowID(#Win_Update)) = 1
      DisableWindow(#Win_Update, #True)
      HideWindow(#Win_Update, #True)
     EndIf
    Case #Mnu_Escape_SkinCreator
     If IsWindowVisible_(WindowID(#Win_SkinCreator)) = 1
      DisableWindow(#Win_SkinCreator, #True)
      HideWindow(#Win_SkinCreator, #True)
     EndIf
    Case #Mnu_Escape_AutoStart
     If IsWindowVisible_(WindowID(#Win_Autostart)) = 1
      DisableWindow(#Win_Autostart, #True)
      HideWindow(#Win_Autostart, #True)
     EndIf
   EndSelect
  ;- PB_Event_Gadget ----------------------------------------------------------------------------------------------------------------------
  Case #PB_Event_Gadget
   Select L_EventWindow
    ;// --- Win_Main ------------------------------------------------------------------------------
    Case #Win_Main
     Select L_EventGadget
      Case #G_IG_Main_Drive
       If L_EventType = #PB_EventType_LeftClick
        If B_MaximizeDocs = #True
         FadeOut()
         ShellExecute_(0, "open", DriveLeter(), #Null, #Null, #SW_MAXIMIZE)
        Else
         FadeOut()
         ShellExecute_(0, "open", DriveLeter(), #Null, #Null, #SW_SHOW)
        EndIf
       EndIf
      Case #G_IG_Main_OwnFiles
       If L_EventType = #PB_EventType_LeftClick
        If FileSize(DriveLeter() + S_OwnFiles) = -2
         If B_MaximizeDocs = #True
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles, #Null, #Null, #SW_MAXIMIZE)
         Else
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles, #Null, #Null, #SW_SHOW)
         EndIf
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + "'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       ElseIf L_EventType = #PB_EventType_RightClick
        If FileSize(DriveLeter() + S_OwnFiles) = -2
         SetGadgetState(#G_IG_Main_OwnFiles, ImageID(#Img_OwnFiles))
         Interface_RefreshMenuOwnFiles()
         TrackPopupMenu_(MenuID(#Menu_PopUp_OwnFiles), #TPM_RIGHTALIGN|#TPM_LEFTBUTTON, WindowX(#Win_Main) + GadgetX(#G_IG_Main_OwnFiles) + GadgetWidth(#G_IG_Main_OwnFiles), WindowY(#Win_Main) + GadgetY(#G_IG_Main_OwnFiles) + GadgetHeight(#G_IG_Main_OwnFiles), #Null, WindowID(#Win_Main), #Null)
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + "'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       EndIf
      Case #G_IG_Main_Documents
       If L_EventType = #PB_EventType_LeftClick
        If FileSize(DriveLeter() + S_OwnFiles + S_Documents + "\") = -2
         If B_MaximizeDocs = #True
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Documents + "\", #Null, #Null, #SW_MAXIMIZE)
         Else
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Documents + "\", #Null, #Null, #SW_SHOW)
         EndIf
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + S_Documents + "\'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       EndIf
      Case #G_IG_Main_Music
       If L_EventType = #PB_EventType_LeftClick
        If FileSize(DriveLeter() + S_OwnFiles + S_Music + "\") = -2
         If B_MaximizeDocs = #True
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Music + "\", #Null, #Null, #SW_MAXIMIZE)
         Else
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Music + "\", #Null, #Null, #SW_SHOW)
         EndIf
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + S_Music + "\'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       EndIf
      Case #G_IG_Main_Pictures
       If L_EventType = #PB_EventType_LeftClick
        If FileSize(DriveLeter() + S_OwnFiles + S_Pictures + "\") = -2
         If B_MaximizeDocs = #True
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Pictures + "\", #Null, #Null, #SW_MAXIMIZE)
         Else
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Pictures + "\", #Null, #Null, #SW_SHOW)
         EndIf
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + S_Pictures + "\'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       EndIf
      Case #G_IG_Main_Movies
       If L_EventType = #PB_EventType_LeftClick
        If FileSize(DriveLeter() + S_OwnFiles + S_Movies + "\") = -2
         If B_MaximizeDocs = #True
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Movies + "\", #Null, #Null, #SW_MAXIMIZE)
         Else
          FadeOut()
          ShellExecute_(0, "open", DriveLeter() + S_OwnFiles + S_Movies + "\", #Null, #Null, #SW_SHOW)
         EndIf
        Else
         MessageRequester(#PrgName, Language_GetString("MsgErr_Directory") + #CRLF$ + "'" + DriveLeter() + S_OwnFiles + S_Movies + "\'", #MB_OK|#MB_ICONEXCLAMATION)
        EndIf
       EndIf
      Case #G_IG_Main_Search
       If L_EventType = #PB_EventType_LeftClick
        SetGadgetState(#G_IG_Main_Search, ImageID(#Img_Search))
        TrackPopupMenu_(MenuID(#Menu_PopUp_Search), #TPM_RIGHTALIGN|#TPM_LEFTBUTTON, WindowX(#Win_Main) + GadgetX(#G_IG_Main_Search) + GadgetWidth(#G_IG_Main_Search), WindowY(#Win_Main) + GadgetY(#G_IG_Main_Search) + GadgetHeight(#G_IG_Main_Search), #Null, WindowID(#Win_Main), #Null)
       EndIf
      Case #G_IG_Main_Preferences
       If L_EventType = #PB_EventType_LeftClick
        If IsWindowVisible_(WindowID(#Win_Preferences)) = #False
         FadeOut()
         Preferences_InitWindow()
         Window_Snap(#Win_Preferences, B_WindowPosition, B_Gap)
         DisableWindow(#Win_Preferences, #False)
         HideWindow(#Win_Preferences, #False)
         SetForegroundWindow_(WindowID(#Win_Preferences))
        Else
         FadeOut()
         SetForegroundWindow_(WindowID(#Win_Preferences))
        EndIf
       EndIf
      Case #G_IG_Main_Misc
       If L_EventType = #PB_EventType_LeftClick
        SetGadgetState(#G_IG_Main_Misc, ImageID(#Img_Misc))
        TrackPopupMenu_(MenuID(#Menu_PopUp_Misc), #TPM_RIGHTALIGN|#TPM_LEFTBUTTON, WindowX(#Win_Main) + GadgetX(#G_IG_Main_Misc) + GadgetWidth(#G_IG_Main_Misc), WindowY(#Win_Main) + GadgetY(#G_IG_Main_Misc) + GadgetHeight(#G_IG_Main_Misc), #Null, WindowID(#Win_Main), #Null)
       EndIf
      Case #G_IG_Main_End
       If L_EventType = #PB_EventType_LeftClick
        Beenden()
       EndIf
      Case #G_IG_Main_MnuStart To #G_IG_Main_MnuEnd
       If L_EventType = #PB_EventType_LeftClick And ListSize(Application()) >= L_EventGadget - #G_IG_Main_MnuStart + L_ScrollMenu + 1
        Application_Run(L_EventGadget - #G_IG_Main_MnuStart + L_ScrollMenu)
       EndIf
       If L_EventType = #PB_EventType_RightClick And ListSize(Application()) >= L_EventGadget - #G_IG_Main_MnuStart + L_ScrollMenu + 1
        L_ActivePrg = L_EventGadget - #G_IG_Main_MnuStart + L_ScrollMenu
        If ListSize(Application()) >= L_ActivePrg
         SelectElement(Application(), L_ActivePrg)
         If FileSize(ConvertString(Application()\Path)) < 1
          For x = #Mnu_PrgStartNormal To #Mnu_PrgPath
           DisableMenuItem(#Menu_PopUp_Programs, x, #True)
          Next
         Else
          For x = #Mnu_PrgStartNormal To #Mnu_PrgPath
           DisableMenuItem(#Menu_PopUp_Programs, x, #False)
          Next
         EndIf
        EndIf
        DisableMenuItem(#Menu_PopUp_Programs, #Mnu_PrgScrollUp, #True)
        DisableMenuItem(#Menu_PopUp_Programs, #Mnu_PrgScrollDown, #True)
        If L_ScrollMenu > 0
         DisableMenuItem(#Menu_PopUp_Programs, #Mnu_PrgScrollUp, #False)
        EndIf
        If L_ScrollMenu < ListSize(Application()) - 20
         DisableMenuItem(#Menu_PopUp_Programs, #Mnu_PrgScrollDown, #False)
        EndIf
        DisplayPopupMenu(#Menu_PopUp_Programs, WindowID(#Win_Main))
       EndIf
     EndSelect
    ;// --- Win_Preferences -----------------------------------------------------------------------
    Case #Win_Preferences
     Select L_EventGadget
      Case #G_TR_Preferences_Categorie
       Preferences_ChangeArea()
      Case #G_BI_Preferences_Cancel
       Preferences_CloseWindow(0)
      Case #G_BI_Preferences_Apply
       Preferences_CloseWindow(1)
      Case #G_TR_Preferences_Programs_List
       Application_RefreshSel()
      Case #G_BI_Preferences_Programs_Up
       Application_Up()
      Case #G_BI_Preferences_Programs_Down
       Application_Down()
      Case #G_BI_Preferences_Programs_Sort
       Application_Sort()
      Case #G_BI_Preferences_Programs_Add
       Application_Add()
      Case #G_BI_Preferences_Programs_Del
       Application_Del()
      Case #G_BI_Preferences_Programs_Warning
       MessageRequester("Error", S_AppErrorMsg, #MB_OK|#MB_ICONEXCLAMATION)
      Case #G_SR_Preferences_Programs_Name
       If L_EventType = #PB_EventType_Change
        Application_ChangeName()
       EndIf
      Case #G_SR_Preferences_Programs_Path
       If L_EventType = #PB_EventType_Change
        Application_ChangePathEdit()
       EndIf
      Case #G_BN_Preferences_Programs_Path
       Application_ChangePath()
      Case #G_SR_Preferences_Programs_Parameter
       If L_EventType = #PB_EventType_Change
        Application_ChangeParameter()
       EndIf
      Case #G_SR_Preferences_Programs_Icon
       If L_EventType = #PB_EventType_Change
        Application_ChangeIconEdit()
       EndIf
      Case #G_BN_Preferences_Programs_Icon
       Application_ChangeIcon()
      Case #G_SR_Preferences_Programs_WorkPath
       If L_EventType = #PB_EventType_Change
        Application_ChangeWorkingDirectoryEdit()
       EndIf
      Case #G_BN_Preferences_Programs_WorkPath
       Application_ChangeWorkingDirectory()
      Case #G_CB_Preferences_Programs_StartType
       Application_ChangeStartType()
      Case #G_CB_Preferences_Programs_AutoStart
       Application_ChangeAutoStart()
      Case #G_CH_Preferences_Starting_SafetycopyPrefs
       For x = #G_CH_Preferences_Starting_SafetycopyType1 To #G_CH_Preferences_Starting_SafetycopyType3
        DisableGadget(x, GetGadgetState(#G_CH_Preferences_Starting_SafetycopyPrefs)!1)
       Next
      Case #G_CH_Preferences_Starting_WallpaperChange
       For x = #G_SR_Preferences_Starting_Wallpaper To #G_BN_Preferences_Starting_Wallpaper
        DisableGadget(x, GetGadgetState(#G_CH_Preferences_Starting_WallpaperChange)!1)
       Next
      Case #G_BN_Preferences_Starting_Wallpaper
       Preferences_ChangeWallpaperPath()
      Case #G_CH_Preferences_Starting_SafetycopyType1 To #G_CH_Preferences_Starting_SafetycopyType3
       For x = #G_CH_Preferences_Starting_SafetycopyType1 To #G_CH_Preferences_Starting_SafetycopyType3
        If L_EventGadget = x
         SetGadgetState(x, #True)
        Else
         SetGadgetState(x, #False)
        EndIf
       Next
      Case #G_TB_Preferences_Interface_Distance
       SetGadgetText(#G_TX_Preferences_Interface_DistanceAmount, Str(GetGadgetState(#G_TB_Preferences_Interface_Distance)))
      Case #G_TB_Preferences_Interface_SystrayIcon
       Preferences_ChangeSysTrayIcon()
      Case #G_CH_Preferences_Interface_SkinSystrayIcon
       Preferences_ChangeSysTrayIcon()
      Case #G_CB_Preferences_Skin_List
       Skin_RefreshInformation()
      Case #G_LI_Preferences_Shortcuts_List
       Preferences_RefreshHotkey()
      Case #G_CH_Preferences_Shortcuts_Strg, #G_CH_Preferences_Shortcuts_Alt, #G_CH_Preferences_Shortcuts_Shift, #G_CB_Preferences_Shortcuts_Hotkey
       Preferences_ChangeHotkey()
      Case #G_LI_Preferences_Fonts_List
       If L_EventType = #PB_EventType_RightClick And GetGadgetState(#G_LI_Preferences_Fonts_List) <> -1
        If GetGadgetState(#G_LI_Preferences_Fonts_List) = 3
         DisableMenuItem(#Menu_PopUp_Fonts, #Mnu_FontsColor, #True)
        Else
         DisableMenuItem(#Menu_PopUp_Fonts, #Mnu_FontsColor, #False)
        EndIf
        DisplayPopupMenu(#Menu_PopUp_Fonts, WindowID(#Win_Preferences))
       EndIf
      Case #G_BN_Preferences_Folder_OwnFilesChangeFolder
       Preferences_ChangeOwnFilesPath()
      Case #G_LI_Preferences_Folder_OwnFilesFolderName
       If L_EventType = #PB_EventType_LeftDoubleClick
        Preferences_ChangeOwnFilesName()
       EndIf
     EndSelect
    ;// --- Win_Information -----------------------------------------------------------------------
    Case #Win_Information
     Select L_EventGadget
      Case #G_BI_Information_Accept
       DisableWindow(#Win_Information, #True)
       HideWindow(#Win_Information, #True)
       KillTimer_(WindowID(#Win_Information), #Timer_InfoLogo)
     EndSelect
    ;// --- Win_Update ----------------------------------------------------------------------------
    Case #Win_Update
     Select L_EventGadget
      Case #G_BN_Update_Manuel
       ShellExecute_(#Null, "open", #S_URLProjekt, #Null, #Null, #SW_SHOW)
      Case #G_BN_Update_Start
       CheckVersion(#True)
     EndSelect
    ;// --- Win_SkinCreator -----------------------------------------------------------------------
    Case #Win_SkinCreator
     Skin_CheckSkinCreateState()
     Select L_EventGadget
      Case #G_BN_SkinCreator_ResPath
       Skin_ChangeRessPath()
      Case #G_BN_SkinCreator_SkinPath
       Skin_ChangeSkinPath()
      Case #G_LI_SkinCreator_Preferences
       If L_EventType = #PB_EventType_LeftDoubleClick
        Skin_ChangeData()
       EndIf
      Case #G_CH_SkinCreator_ShwLog
       Skin_ShwLog(0)
      Case #G_BN_SkinCreator_Cancel
       DisableWindow(#Win_SkinCreator, #True)
       HideWindow(#Win_SkinCreator, #True)
      Case #G_BN_SkinCreator_Create
       Skin_Create()
     EndSelect
    ;// --- Win_Autostart -------------------------------------------------------------------------
    Case #Win_Autostart
     Select L_EventGadget
      Case #G_SR_Autorun_DriveName
       If L_EventType = #PB_EventType_Change
        SetGadgetText(#G_SR_Autorun_Preview, Autorun_GetSource())
       EndIf
      Case #G_BN_Autorun_DriveIcon
       Autorun_ChangeDriveIcon()
      Case #G_CH_Autorun_DoubleClick
       SetGadgetText(#G_SR_Autorun_Preview, Autorun_GetSource())
      Case #G_CH_Autorun_KontextEntry
       SetGadgetText(#G_SR_Autorun_Preview, Autorun_GetSource())
      Case #G_BN_Autorun_Remove
       Autorun_Remove()
      Case #G_BN_Autorun_Copy
       SetClipboardText(Autorun_GetSource())
      Case #G_BI_Autorun_Cancel
       DisableWindow(#Win_Autostart, #True)
       HideWindow(#Win_Autostart, #True)
      Case #G_BI_Autorun_Apply
       Autorun_Apply()
     EndSelect
   EndSelect
  ;- PB_Event_SysTray
  Case #PB_Event_SysTray
   If L_EventType = #PB_EventType_RightClick
    DisplayPopupMenu(#Menu_PopUp_SysTray, WindowID(#Win_Main))
   EndIf
  ;- PB_Event_CloseWindow -----------------------------------------------------------------------------------------------------------------
  Case #PB_Event_CloseWindow
   Select L_EventWindow
    Case #Win_Preferences
     Preferences_CloseWindow(0)
    Case #Win_Information
     DisableWindow(#Win_Information, #True)
     HideWindow(#Win_Information, #True)
     KillTimer_(WindowID(#Win_Information), #Timer_InfoLogo)
    Case #Win_Update
     DisableWindow(#Win_Update, #True)
     HideWindow(#Win_Update, #True)
    Case #Win_SkinCreator
     DisableWindow(#Win_SkinCreator, #True)
     HideWindow(#Win_SkinCreator, #True)
    Case #Win_Autostart
     DisableWindow(#Win_Autostart, #True)
     HideWindow(#Win_Autostart, #True)
   EndSelect
 EndSelect
ForEver

;- DataSection
DataSection
 KeyName:
 Data.s "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
 Data.s "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12", "F13", "F14", "F15", "F16", "F17", "F18", "F19", "F20", "F21", "F22", "F23", "F24"
 Data.s "Cursor left", "Cursor up", "Cursor right", "Cursor down", "Page up", "Page down"
 Data.s "Backspace", "Tab", "Return", "Pause", "Snapshot", "Escape", "Space", "End", "Home", "Insert", "Delete", "Window left", "Window right"
 KeyCode:
 Data.l 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90
 Data.l 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135
 Data.l 37, 38, 39, 40, 33, 34
 Data.l 8, 9, 13, 19, 44, 27, 32, 35, 36, 45, 46, 91, 92
 SknFile: Data.s "Preview.bmp", "Icon.ico", "Background.bmp", "Btn_Drive.bmp", "Btn_Drive_Over.bmp", "Btn_OwnFiles.bmp", "Btn_OwnFiles_Over.bmp", "Btn_Documents.bmp", "Btn_Documents_Over.bmp", "Btn_Music.bmp", "Btn_Music_Over.bmp", "Btn_Pictures.bmp", "Btn_Pictures_Over.bmp", "Btn_Movies.bmp", "Btn_Movies_Over.bmp", "Btn_Search.bmp", "Btn_Search_Over.bmp", "Btn_Preferences.bmp", "Btn_Preferences_Over.bmp", "Btn_Misc.bmp", "Btn_Misc_Over.bmp", "Btn_End.bmp", "Btn_End_Over.bmp", "Percent_Back.bmp", "Percent_Bar.bmp", "Mnu_01.bmp", "Mnu_02.bmp", "Mnu_03.bmp", "Mnu_04.bmp", "Mnu_05.bmp", "Mnu_06.bmp", "Mnu_07.bmp", "Mnu_08.bmp", "Mnu_09.bmp", "Mnu_10.bmp", "Mnu_11.bmp", "Mnu_12.bmp", "Mnu_13.bmp", "Mnu_14.bmp", "Mnu_15.bmp", "Mnu_16.bmp", "Mnu_17.bmp", "Mnu_18.bmp", "Mnu_19.bmp", "Mnu_20.bmp", "Mnu_01_Over.bmp", "Mnu_02_Over.bmp", "Mnu_03_Over.bmp", "Mnu_04_Over.bmp", "Mnu_05_Over.bmp", "Mnu_06_Over.bmp", "Mnu_07_Over.bmp", "Mnu_08_Over.bmp", "Mnu_09_Over.bmp", "Mnu_10_Over.bmp", "Mnu_11_Over.bmp", "Mnu_12_Over.bmp", "Mnu_13_Over.bmp", "Mnu_14_Over.bmp", "Mnu_15_Over.bmp", "Mnu_16_Over.bmp", "Mnu_17_Over.bmp", "Mnu_18_Over.bmp", "Mnu_19_Over.bmp", "Mnu_20_Over.bmp"
 SknW:    Data.l 150, 16, 400, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 120, 80, 80, 102, 1, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250
 SknH:    Data.l 210, 16, 560, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 24, 24, 16, 14, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24
 Language:
 ;Window Title
 Data$ "WinTle_Main",                "Launcher"
 Data$ "WinTle_Preferences",         "Einstellungen"
 Data$ "WinTle_Informations",        "Über Launcher"
 Data$ "WinTle_Update",              "Update"
 Data$ "WinTle_SkinCreator",         "Skin Assisten"
 Data$ "WinTle_Autorun",             "Autostart Assistent"
 Data$ "WinTle_Error",               "Fehler"
 ;Menu Search
 Data$ "MnuItm_Drive",               "Dieses Laufwerk"
 Data$ "MnuItm_Folder",              "Diesen Ordner"
 Data$ "MnuItm_OwnFiles",            "Eigene Dateien"
 Data$ "MnuItm_Computer",            "Diesen Computer"
 Data$ "MnuItm_Internet",            "Im Internet"
 ;Menu SysTray
 Data$ "MnuItm_SysTShow_1",          "Zeigen"
 Data$ "MnuItm_SysTShow_2",          "Ausblenden"
 Data$ "MnuItm_SysTPref",            "Einstellungen"
 Data$ "MnuItm_SysTUpdate",          "Update"
 Data$ "MnuItm_SysTAbout",           "Über Launcher"
 Data$ "MnuItm_SysTEnd",             "Beenden"
 ;Menu Misc
 Data$ "MnuItm_MiscHelp",            "Hilfe"
 Data$ "MnuItm_MiscWebsite",         "Projekt Homepage"
 Data$ "MnuItm_MiscUpdate",          "Update"
 Data$ "MnuItm_MiscSkinCreator",     "Skin erstellen"
 Data$ "MnuItm_MiscAutorunCreator",  "Autorun Assistent"
 Data$ "MnuItm_MiscInformation",     "Über Launcher"
 ;Menu Programms
 Data$ "MnuItm_Normal",              "Normal"
 Data$ "MnuItm_Maximize",            "Maximiert"
 Data$ "MnuItm_Minimize",            "Minimiert"
 Data$ "MnuItm_OpenPrgFolder",       "Programmordner öffnen"
 Data$ "MnuItm_Preferences",         "Einstellungen"
 Data$ "Mnu_ScrollUp",               "Zum Anfang"
 Data$ "Mnu_ScrollDown",             "Zum Ende"
 ;Menu Fonts
 Data$ "MnuFnt_Font",                "Schriftart ändern"
 Data$ "MnuFnt_Color",               "Farbe ändern"
 ;Preferences, Categorie
 Data$ "PrfCtg_Programms",           "Programmverwaltung"
 Data$ "PrfCtg_Starting",            "Startverhalten"
 Data$ "PrfCtg_Interface",           "Oberfläche"
 Data$ "PrfCtg_Skin",                "Skin"
 Data$ "PrfCtg_ProgrammsMenu",       "Programmemenü"
 Data$ "PrfCtg_Fonts",               "Schriftarten"
 Data$ "PrfCtg_Shortcuts",           "Tastenkombinationen"
 Data$ "PrfCtg_Folder",              "Verzeichnisse"
 Data$ "PrfCtg_Security",            "Sicherheit"
 ;Preferences, Programms
 Data$ "PrfPrg_Name",                "Name"
 Data$ "PrfPrg_Program",             "Programm"
 Data$ "PrfPrg_SearchPrg",           "..."
 Data$ "PrfPrg_SearcgPrgT",          "Suchen"
 Data$ "PrfPrg_Parameter",           "Parameter"
 Data$ "PrfPrg_Icon",                "Symbol"
 Data$ "PrfPrg_SearchIcon",          "..."
 Data$ "PrfPrg_SearchIconT",         "Suchen"
 Data$ "PrfPrg_WorkingDir",          "Arbeitsverzeichnis"
 Data$ "PrfPrg_WorkingDirChange",    "..."
 Data$ "PrfPrg_WorkingDirChangeT",   "Suchen"
 Data$ "PrfPrg_StartType",           "Ausführen"
 Data$ "PrfPrg_StartTypeT",          "Gibt an in welchen Zustand das Programm ausgeführt werden soll"
 Data$ "PrfPrg_StartType_1",         "Normal"
 Data$ "PrfPrg_StartType_2",         "Maximiert"
 Data$ "PrfPrg_StartType_3",         "Minimiert"
 Data$ "PrfPrg_StartType_4",         "Versteckt"
 Data$ "PrfPrg_AutoRun",             "Automatisch starten"
 Data$ "PrfPrg_AutoRunT",            "Startet das Programm automatisch mit Launcher"
 Data$ "PrfPrg_PrgUpT",              "Nach oben verschieben"
 Data$ "PrfPrg_PrgDownT",            "Nach unten verschieben"
 Data$ "PrfPrg_PrgSortT",            "Nach Namen sortieren"
 Data$ "PrfPrg_PrgAddT",             "Programm hinzufügen"
 Data$ "PrfPrg_PrgDelT",             "Programm entfernen"
 Data$ "PrfPrg_PrgWrongT",           "Es befinden sich Fehler bei denn Eingaben"
 ;Preferences, Starting
 Data$ "PrfStg_OpenAtStart",         "Bei Start anzeigen"
 Data$ "PrfStg_OpenAtStartT",        "Blendet Launcher beim Start ein"
 Data$ "PrfStg_CheckVersion",        "Version überprüfen"
 Data$ "PrfStg_CheckVersionT",       "Überprüft beim Start die Programmversion auf Updates"
 Data$ "PrfStg_OSTest",              "Betriebssystem überprüfen"
 Data$ "PrfStg_OSTestT",             "Beim Programmstart auf kompatibilität testen"
 Data$ "PrfStg_CheckApps",           "Programme überprüfen"
 Data$ "PrfStg_CheckAppsT",          "Beim Start von Launcher wird die Programmdatenbank auf Fehleingaben überprüft"
 Data$ "PrfStg_SafetycopyPrefs",     "Einstellungen sichern"
 Data$ "PrfStg_SafetycopyPrefsT",    "Falls aktiviert wird Launcher eine Sicherungskopie der Einstellungen anlegen"
 Data$ "PrfStg_SafetycopyType1",     "Beim Starten von Launcher"
 Data$ "PrfStg_SafetycopyType2",     "Beim beenden von Launcher"
 Data$ "PrfStg_SafetycopyType3",     "Einmal am Tag"
 Data$ "PrfStg_Wallpaper",           "Desktop Wallpaper"
 Data$ "PrfStg_ChangeWallpaper",     "Automatisch wechseln"
 Data$ "PrfStg_ChangeWallpaperT",    "Hiermit wechselt Launcher automatisch das Desktop-Wallpaper"
 Data$ "PrfStg_SearchWallpaper",     "..."
 Data$ "PrfStg_SearchWallpaperT",    "Suchen"
 ;Preferences, Interface
 Data$ "PrfInf_Language",            "Sprache"
 Data$ "PrfInf_LanguageT",           "Bestimmt die Sprache von Launcher"
 Data$ "PrfInf_Position",            "Fensterposition"
 Data$ "PrfInf_PositionT",           "Legt fest an welcher Position sich Launcher öffnet"
 Data$ "PrfInf_Position_1",          "Zentriert"
 Data$ "PrfInf_Position_2",          "Oben Links"
 Data$ "PrfInf_Position_3",          "Oben Rechts"
 Data$ "PrfInf_Position_4",          "Unten Rechts"
 Data$ "PrfInf_Position_5",          "Unten Links"
 Data$ "PrfInf_WinGap",              "Bildschirmabstand"
 Data$ "PrfInf_WinGapT",             "Legt den Abstand zwischen Launcher und Bildschirmrand fest"
 Data$ "PrfInf_Fading",              "Transparents Effekt"
 Data$ "PrfInf_FadingT",             "Beim ein und ausblenden von Launcher wird ein Transparents Effekt benutzt"
 Data$ "PrfInf_AlwaysOnTop",         "Immer im Vordergrund"
 Data$ "PrfInf_AlwaysOntopT",        "Launcher befindet sich immer im Vordergrund"
 Data$ "PrfInf_TxSysTrayIcon",       "Systray Symbol"
 Data$ "PrfInf_TbSystrayIconT",      "Legt das Symbol im Systray fest"
 Data$ "PrfInf_SkinSystrayIcon",     "Systray Symbol von Skin"
 Data$ "PrfInf_SkinSystrayIconT",    "Hiermit wird das Systray Symbol vom Skin festgelegt"
 Data$ "PrfInf_SpaceBar",            "Speicherplatzanzeige"
 Data$ "PrfInf_SB_ShwSpace",         "Freien Speicherplatz anzeigen"
 Data$ "PrfInf_SB_ShwSpaceT",        "Zeigt in der Speicherplatz Anzeige den freien Speicherplatz an"
 Data$ "PrfInf_SB_ShwUsed",          "Belegten Speicherplatz anzeigen"
 Data$ "PrfInf_SB_ShwUsedT",         "Zeigt in der Speicherplatz Anzeige den belegten Speicherplatz an"
 Data$ "PrfInf_SB_Percent",          "In Prozent"
 Data$ "PrfInf_SB_PercentT",         "Die Angabe in der Speicherplatzanzeige ist in Prozent"
 Data$ "PrfInf_SB_Spaced",           "In Speicherplatz"
 Data$ "PrfInf_SB_SpacedT",          "Die Angabe in der Speicherplatzanzeige ist in Speicherplatz"
 ;Preferences, Skin
 Data$ "PrfSkn_Skin",                "Skin"
 Data$ "PrfSkn_SkinT",               "Legt das Design von Launcher fest"
 Data$ "PrfSkn_Name",                "Name"
 Data$ "PrfSkn_Version",             "Version"
 Data$ "PrfSkn_Autor",               "Autor"
 Data$ "PrfSkn_Homepage",            "Homepage"
 Data$ "PrfSkn_Preview",             "Vorschau"
 ;Preferences, Programms Menu
 Data$ "PrfPgM_AdjustTxt",           "Textausrichtung"
 Data$ "PrfPgM_AdjustLeft",          "Linksbündig"
 Data$ "PrfPgM_AdjustLeftT",         "Programmnamen werden linksbündig dargestellt"
 Data$ "PrfPgM_AdjustCenter",        "Zentriert"
 Data$ "PrfPgM_AdjustCenterT",       "Programmnamen werden Zentriert dargestellt"
 Data$ "PrfPgM_AdjustRight",         "Rechtsbündig"
 Data$ "PrfPgM_AdjustRightT",        "Programmnamen werden rechtsbündig dargestellt"
 Data$ "PrfPgM_BorderGap",           "Abstand zum Rand"
 Data$ "PrfPgM_BorderGapT",          "Bestimmt den Abstand zwischen Rand und Icon, Text"
 Data$ "PrfPgM_IcnTxtGap",           "Abstand zwischen Icon und Text"
 Data$ "PrfPgM_IcnTxtGapT",          "Bestimmt den Abstand zwischen Icon und Text"
 Data$ "PrfPgM_ShwIcon",             "Symbole anzeigen"
 Data$ "PrfPgM_ShwIconT",            "Programmsymbole werden angezeigt"
 Data$ "PrfPgM_Colors",              "Farben"
 Data$ "PrfPgM_ColorsT",             "Doppelklick um zu ändern"
 Data$ "PrfPgM_Colors_C1",           "Farbe"
 Data$ "PrfPgM_Colors_C2",           "Type"
 Data$ "PrfPgM_Colors_1",            "Text Normal"
 Data$ "PrfPgM_Colors_2",            "Text Maus"
 ;Preferences, Fonts
 Data$ "PrfFnt_Title",               "Schriftarten"
 Data$ "PrfFnt_FontsT",              "Rechtsklick um zu ändern"
 Data$ "PrfFnt_Fonts_C1",            "Bereich"
 Data$ "PrfFnt_Fonts_C2",            "Name"
 Data$ "PrfFnt_Fonts_C3",            "Größe"
 Data$ "PrfFnt_Fonts_C4",            "Schnitt"
 Data$ "PrfFnt_Fonts_C5",            "Farbe"
 Data$ "PrfFnt_Fonts_1",             "Programme"
 Data$ "PrfFnt_Fonts_2",             "Programme Maus"
 Data$ "PrfFnt_Fonts_3",             "Prozentbalken"
 Data$ "PrfFnt_Fonts_4",             "Oberfläche"
 ;Preferences, Shortcuts
 Data$ "PrfShc_Title",               "Tastenkombinationen"
 Data$ "PrfShc_Shortcuts_C1",        "Ereignis"
 Data$ "PrfShc_Shortcuts_C2",        "Strg"
 Data$ "PrfShc_Shortcuts_C3",        "Alt"
 Data$ "PrfShc_Shortcuts_C4",        "Shift"
 Data$ "PrfShc_Shortcuts_C5",        "Zusatz"
 Data$ "PrfShc_Shortcuts_1",         "Hauptfenster"
 Data$ "PrfShc_Shortcuts_2",         "Programme hoch"
 Data$ "PrfShc_Shortcuts_3",         "Programme runter"
 Data$ "PrfShc_Shortcuts_4",         "Programmverwaltung"
 Data$ "PrfShc_Shortcuts_5",         "Einstellungen"
 Data$ "PrfShc_Shortcuts_6",         "Beenden"
 ;Preferences, Folder
 Data$ "PrfFld_OwnFiles",            "Eigene Dateien"
 Data$ "PrfFld_OwnFilesSearch",      "..."
 Data$ "PrfFld_OwnFilesSearchT",     "Suchen"
 Data$ "PrfFld_OwnFilesMax",         "Maximiert öffnen"
 Data$ "PrfFld_OwnFilesMaxT",        "Eigene Dateien immer maximiert öffnen"
 Data$ "PrfFld_OwnFilesFldN",        "Ordnernamen (Eigene Dateien)"
 Data$ "PrfFld_OwnFilesFldNT",       "Doppelklick um zu ändern"
 Data$ "PrfFld_OwnFilesFldN_C1",     "Ordner"
 Data$ "PrfFld_OwnFilesFldN_C2",     "Name"
 Data$ "PrfFld_OwnFilesFldN_1",      "Dokumente"
 Data$ "PrfFld_OwnFilesFldN_2",      "Musik"
 Data$ "PrfFld_OwnFilesFldN_3",      "Grafiken"
 Data$ "PrfFld_OwnFilesFldN_4",      "Videos"
 Data$ "PrfFld_InternetPage",        "Internet Browser Startseite (Suchmaschine)"
 Data$ "PrfFld_InternetPageT",       "Gibt die Suchmaschine bzw. Startseite für Suchen/Im Internet an"
 Data$ "PrfFld_InternetPageCh_1",    "Hinzufügen"
 Data$ "PrfFld_InternetPageCh_2",    "Entfernen"
 Data$ "PrfFld_InternetPageMax",     "Maximiert öffnen"
 Data$ "PrfFld_InternetPageMaxT",    "Den Internet Browser immer maximiert öffnen"
 ;Update
 Data$ "UpdInf_InstaledV",           "Installierte Version:"
 Data$ "UpdInf_NewestV",             "Neuste Version:"
 Data$ "UpdBtn_Manuel",              "Manuel"
 Data$ "UpdBtn_Check",               "Überprüfen"
 ;SkinCreator
 Data$ "SkCTxt_Ressource",           "Ressourcen"
 Data$ "SkCBtn_Ressource",           "..."
 Data$ "SkCBtn_RessourceT",          "Suchen"
 Data$ "SkCTxt_SkinPath",            "Skin speichern unter"
 Data$ "SkCBtn_SkinPath",            "..."
 Data$ "SkCBtn_SkinPathT",           "Suchen"
 Data$ "SkCLii_Column1",             "Bezeichnung"
 Data$ "SkCLii_Column2",             "Wert"
 Data$ "SkCLii_ToolTip",             "Doppelklick zum ändern"
 Data$ "SkCLii_Entry1",              "Name"
 Data$ "SkCLii_Entry2",              "Autor"
 Data$ "SkCLii_Entry3",              "Version"
 Data$ "SkCLii_Entry4",              "Homepage"
 Data$ "SkCLii_Entry5",              "Textfarbe Normal"
 Data$ "SkCLii_Entry6",              "Textfarbe Mausberührung"
 Data$ "SkCChb_ShwLog" ,             "Logdatei anzeigen"
 Data$ "SkCChb_ShwLogT",             "Zeigt bei der erstellung vom Skin einen Bericht an"
 Data$ "SkCBtn_Cancel",              "Abbrechen"
 Data$ "SkCBtn_Create",              "Erstellen"
 ;Autorun
 Data$ "AutTxt_Description",         "Dieser Assistent kann die Autorun.inf Datei für Sie erstellen.|Dies ermöglicht einen Automatischen Start von Launcher beim einlegen des Wechseldatenträgers."
 Data$ "AutTxt_DriveName",           "Beschreibung"
 Data$ "AutTxt_DriveIcon",           "Symbol"
 Data$ "AutBtn_DriveIcon",           "..."
 Data$ "AutBtn_DriveIconT",          "Suchen"
 Data$ "AutChb_DoubleClick",         "Mit Doppelklick starten"
 Data$ "AutChb_DoubleClickT",        "Führt Launcher bei einem doppelklick aufs Laufwerkssymbol aus"
 Data$ "AutChb_KontextEntry",        "Kontextmenüeintrag hinzufügen"
 Data$ "AutChb_KontextEntryT",       "Hiermit werden dem Kontextmenü des Laufwerks Einträge hinzugefügt"
 Data$ "AutStr_Preview",             "Vorschau der Autorun.inf"
 Data$ "AutBtn_Remove",              "Entfernen"
 Data$ "AutBtn_RemoveT",             "Autorun.inf entfernen"
 Data$ "AutBtn_Copy",                "Kopieren"
 Data$ "AutBtn_CopyT",               "Autorun.inf Syntax kopieren"
 ;Error
 Data$ "ErrTxt_Text",                "Launcher hat einen Fehler verursacht|%Error%|Sie haben nun folgende Möglichkeiten:|- Neustart von Launcher und hoffen das dieser Fehler nicht erneut auftritt.|- Launcher in die Ecke werfen und sich nach alternativer Software umsehen.|- Schreiend davon laufen|- Sich mit dem Support in Verbindung setzen und hoffen dass es möglichst schnell eine Fehlerbeseitigung gibt."
 Data$ "ErrBtn_Copy",                "Kopieren"
 Data$ "ErrBtn_Ignore",              "Ignorieren"
 Data$ "ErrBtn_End",                 "Beenden"
 ;Messages
 Data$ "MsgUpd_OpenConnection",      "Verbindung aufbauen.."
 Data$ "MsgUpd_ReadData",            "Fehler beim lesen der Daten"
 Data$ "MsgUpd_NewVersion",          "Neue Version verfügbar"
 Data$ "MsgUpd_NoUpdate",            "Kein Update nötig"
 Data$ "MsgAut_DeleteAutorun",       "Möchten Sie die Autorun.inf wirklich entfernen?"
 Data$ "MsgApp_NoAppPath",           "Fehlender Programmpath"
 Data$ "MsgApp_WrongAppPath",        "Ungültiger Programmpath"
 Data$ "MsgApp_WrongIconPath",       "Ungültiger Iconpath"
 Data$ "MsgApp_WrongWorkPath",       "Ungültiges Arbeitsverzeichnis"
 Data$ "MsgApp_RemoveApplication",   "Möchten Sie das Programm wirklich entfernen?"
 Data$ "MsgSkn_Header",              "Header wird erstellt.."
 Data$ "MsgSkn_Createt",             "Skin erfolgreich erstellt"
 Data$ "MsgSkn_Cancel",              "Abgebrochen durch Benutzer"
 Data$ "TleErr",                     "Fehler"
 Data$ "MsgErr_InvalidWallpaper",    "Ungültige Grafikdatei|Die Grafikdatei muß ein Windows Bitmap sein"
 Data$ "MsgErr_LoadRess",            "Ressource konnte nicht geladen werden."
 Data$ "MsgErr_LoadFont",            "Schriftart konnte nicht geladen werden."
 Data$ "MsgErr_Window",              "Fehler beim erstellen von Fenster"
 Data$ "MsgErr_GadgetList",          "Fehler beim erstellen von GadgetList"
 Data$ "MsgErr_PopUpMenu",           "Fehler beim erstellen von PopUp Menü"
 Data$ "MsgErr_NoIcons",             "Diese Datei enthält keine Icons."
 Data$ "MsgErr_InvalidSysTrayILib",  "Die Systray Icon Libary ist ungültig."
 Data$ "MsgErr_NoSysTrayILib",       "Die Systray Icon Libary konnte nicht gefunden werden."
 Data$ "MsgErr_PortableDriveFile",   "Die Datei muss sich auf dem Wechseldatenträger befinden."
 Data$ "MsgErr_PortableDriveDir",    "Das Verzeichnis muss sich auf dem Wechseldatenträger befinden."
 Data$ "MsgErr_WrongHyperlink",      "Ungültige Internetadresse|Eine Internet Adresse muss mit 'http://' beginnen."
 Data$ "MsgErr_SavePreferences",     "Einstellungen konnten nicht gespeichert werden."
 Data$ "MsgErr_WindowBackground",    "Fehler beim setzen des Fensterhintergrunden"
 Data$ "MsgErr_InvalidSkinImage",    "Dieser Skin ist ungültig oder von einer anderen Version|Fehler beim laden einer Grafik!"
 Data$ "MsgErr_MissingSkinImage",    "Dieser Skin ist ungültig oder von einer anderen Version|Fehlendes Bild"
 Data$ "MsgErr_InvalidSkin",         "Ungültiger Skin"
 Data$ "MsgErr_Header",              "Header Schreibfehler"
 Data$ "MsgErr_WrongSkinRessPath",   "Ungültiges Ressource Verzeichnis"
 Data$ "MsgErr_WrongSkinImage",      "Fehlgeschlagen, Ungültiges Grafikformat"
 Data$ "MsgErr_MissingSkinFile",     "Fehlgeschlagen, fehlende Datei"
 Data$ "MsgErr_CreateSkinRess",      "Fehler bei Archiverstellung"
 Data$ "MsgErr_OverwriteFile",       "Datei existiert bereits|Möchten Sie die Datei überschreiben?"
 Data$ "MsgErr_LoadSkin",            "Skin konnte nicht geladen werden."
 Data$ "MsgErr_LoadLanguage",        "Sprachdatei konnte nicht geöffnet werden"
 Data$ "MsgErr_Memory",              "Fehler bei Speicherreservierung"
 Data$ "MsgErr_Failed",              "fehlgeschlagen"
 Data$ "MsgErr_WrongOS",             "Diese Anwendung ist mit diesem Betribssystem wahrscheinlich nicht kompatibel|Möchten Sie trotzdem fortfahren?"
 Data$ "MsgErr_Directory",           "Das Verzeichnis existiert nicht, bitte überprüfen Sie die Einstellungen."
 Data$ "MsgErr_InvalidPath",         "Der Ordnername enthält ungültige Zeichen|\ / : * ? #34 < > #124"
EndDataSection
; IDE Options = PureBasic 4.40 Beta 7 (Windows - x86)
; CursorPosition = 4774
; FirstLine = 4507
; Folding = --FAAAA5------------
; EnableXP
; EnableOnError
; UseIcon = Ressource\Main.ico
; Executable = Launcher.exe
; CPU = 1
; CurrentDirectory = ..\
; CompileSourceDirectory
; EnableCompileCount = 272
; EnableBuildCount = 94
; EnableExeConstant
; IncludeVersionInfo
; VersionField0 = 1,0,9,0
; VersionField1 = 1,0,9,0
; VersionField2 = PureSoft
; VersionField3 = Launcher
; VersionField4 = 1.09
; VersionField5 = 1.09
; VersionField6 = Startmenü für USB-Stick
; VersionField7 = Launcher
; VersionField8 = Launcher.exe
; VersionField9 = Copyright©Kai Gartenschläger, 2007
; VersionField13 = angel-kai@hotmail.de
; VersionField14 = http://www.kaisnet.de
; VersionField15 = VOS_NT_WINDOWS32
; VersionField16 = VFT_APP
; AddResource = Ressource\Ressource.rc