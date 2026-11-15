C F77 PROGRAM PHONE BOOK
C ********************************************************************
C CONSTANTS
C N:MAX ENTIES
C FP:'ADDR.TXT'
C IU:UNIT NUM. OF FILE OPENED
C ******************************************************************** 
C VARIABLES:
C INPUT FROM USER
C L:LASTNAME
C F:FIRSTNAME
C PN:PHONE NUM.
C M:MEMO
C L2,F2,PN2,M2:INPUT FROM FILE
C IC:COUNT OF USED ENTRIES
C **********************************************************************
      PROGRAM PHONEBK
      PARAMETER(N=100,IU=1)
      CHARACTER*12 PN2(N)
      CHARACTER*30 L2(N),F2(N),FP
      CHARACTER*100 M2(N)
      PARAMETER(FP='ADDRBK.TXT')
      IC=0
C***********************************************************************
C OPEN FILE AND COPY TO L2,F2,PN2,M2.THEN CLOSE.
      OPEN(IU,FILE=FP,ERR=950)
      DO 50 I=1,N
       READ(IU,990,ERR=960,END=75)L2(I),F2(I),PN2(I),M2(I)
       IC=IC+1    
50    CONTINUE
75    WRITE(*,*)FP,'OPENED'
      WRITE(*,*)'IC=',IC
      WRITE(*,*)
C **********************************************************************
C MENU LOOP
100   WRITE(*,*)'0. ADD'    
      WRITE(*,*)'1. DEL (BY INDEX NUMBER)'
      WRITE(*,*)'2. LOOKUP (LAST NAME)'
      WRITE(*,*)'3. LOOKUP (PHONE NUMBER)'
      WRITE(*,*)'4. PRINT BUFFER'
      WRITE(*,*)'5. WRITE CHANGES' 
      WRITE(*,*)'6. QUIT'

      READ(*,*)IN
      IF(IN.EQ.0)THEN
       WRITE(*,*) 'ADD'
       CALL ADD(IC,N,L2,F2,PN2,M2)
      ELSEIF(IN.EQ.1)THEN
       WRITE(*,*) 'DEL (BY INDEX NUMBER)'
       WRITE(*,*)'INDEX:'
       READ(*,*)IX
       CALL DELI(IC,L2,F2,PN2,M2,IX)
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'LOOKUP (LAST NAME)'
       CALL LLOOK(IC,L2,F2,PN2,M2)
      ELSEIF(IN.EQ.3)THEN
       WRITE(*,*)'LOOKUP (PHONE NUMBER)'
       CALL PLOOK(IC,L2,F2,PN2,M2)
      ELSEIF(IN.EQ.4)THEN
       CALL PRENTRY(IC,L2,F2,PN2,M2)
      ELSEIF(IN.EQ.5)THEN
       CALL BSORT(IC,L2,F2,PN2,M2)
       REWIND(IU,ERR=970)
       DO 200 I=1,IC
        WRITE(IU,990,ERR=965)L2(I),F2(I),PN2(I),M2(I)
200    CONTINUE
       WRITE(*,*)'CHANGES WRITTEN'
      ELSEIF(IN.EQ.6)THEN
       GOTO 975
      ELSE
       GOTO 100
      ENDIF
      GOTO 100
C END OF MENU LOOP
C **********************************************************************
950   WRITE(*,*)'ERROR OPENING FILE'
      GOTO 975
960   WRITE(*,*)'ERROR READING FILE'
      GOTO 975
965   WRITE(*,*)'ERROR WRITING FILE'
      GOTO  975
970   WRITE(*,*)'ERROR REWINDING FILE'
975   CLOSE(IU)
      WRITE(*,*)FP,'CLOSED'
      WRITE(*,*)'DONE'
990   FORMAT(A30,X,A30,X,A12,X,A100)
      STOP
      END
