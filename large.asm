MOV DPTR,# 4500H
MOVX A,@ DPTR
MOV R0,A
DEC R0
INC DPTR
MOVX A,@ DPTR
MOV R1,A
L3:INC DPTR
MOVX A,@ DPTR
MOV R2,A
SUBB A,R1
JC L1
MOV A,R2
MOV R1,A
L1:DJNZ R0,L3
INC DPTR
MOV A,R1
MOVX @ DPTR,A
END