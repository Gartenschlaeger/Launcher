Procedure.s Base64_DecodeString(String$)
 Protected B64Buffer.s, B64Size.l
 If String$ <> ""
  B64Size = Int(1.35 * Len(String$))
  If B64Size < 64: B64Size = 64: EndIf
  B64Buffer = Space(B64Size)
  Base64Decoder(@String$, Len(String$), @B64Buffer, B64Size)
  ProcedureReturn B64Buffer
 EndIf
EndProcedure

Procedure.s Base64_EncodeString(String$)
 Protected B64Buffer.s, B64Size.l
 If String$ <> ""
  B64Size = Int(1.35 * Len(String$))
  If B64Size < 64: B64Size = 64: EndIf
  B64Buffer = Space(B64Size)
  Base64Encoder(@String$, Len(String$), @B64Buffer, B64Size)
  ProcedureReturn B64Buffer
 EndIf
EndProcedure

Procedure Base64_SaveEncodeFile(File, Path$)
 Protected Mem.l, Size.l, hFile.l,   B64Buffer.l, B64Size.l

 If IsFile(File) <> 0
  
  If Lof(File) > 0

   hFile =  CreateFile(#PB_Any, Path$)
   If hFile <> 0
   
    Size = Lof(File)
    Mem =  AllocateMemory(Size)
   
    ReadData(File, Mem, Size)
    
    B64Size = Int(1.35 * Size)
    If B64Size < 64: B64Size = 64: EndIf
    B64Buffer = AllocateMemory(B64Size)
    
    Base64Encoder(Mem, Size, B64Buffer, B64Size)
    
    WriteData(hFile, B64Buffer, B64Size)
    
    CloseFile(hFile)
    
    ProcedureReturn 1
   EndIf
  
  EndIf
 
 EndIf
EndProcedure

Procedure Base64_SaveDecodeFile(File, Path$)
 Protected Mem.l, Size.l, hFile.l,    B64Buffer.l, B64Size.l

 If IsFile(File) <> 0
  If Lof(File) > 0
   hFile = CreateFile(#PB_Any, Path$)
   If hFile <> 0
   
    Size = Lof(File)
    Mem  = AllocateMemory(Size)
   
    ReadData(File, Mem, Size)
    
    B64Size = Int(1.35 * Size)
    If B64Size < 64: B64Size = 64: EndIf
    B64Buffer = AllocateMemory(B64Size)
    
    Base64Decoder(Mem, Size, B64Buffer, B64Size)
    
    WriteData(hFile, B64Buffer, B64Size)
    
    CloseFile(hFile)
    
    ProcedureReturn 1
   EndIf
  EndIf
 EndIf
 ProcedureReturn 0
EndProcedure

hFile = ReadFile(#PB_Any, GetHomeDirectory() + "Desktop\Encode.txt")
If hFile <> 0
 Base64_SaveDecodeFile(hFile, GetHomeDirectory() + "Desktop\Decode.txt")
 CloseFile(hFile)
EndIf
; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 84
; FirstLine = 35
; Folding = -
; EnableXP
; CPU = 1