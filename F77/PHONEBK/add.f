C **********************************************************************
C F77 SUBROUTINE ADD ENTRY TO L2,F2,PN2,M2
C:VARIABLES
C N:MAX ENTRIES 
C IC:LINE COUNT OF FILE
C L2(*) ARRAY OF STRINGS OF LASTNAMES
C F2(*) ARRAY OF STRINGS OF FIRSTNAMES
C PN2(*) ARRAY OF STRINGS OF PHONE NUMBERS
C M2(*) ARRAY OF STRINGS OF MEMOS
C **********************************************************************
       SUBROUTINE ADD(IC,N,L2,F2,PN2,M2)
       CHARACTER*30 L2(*),F2(*)
       CHARACTER*12 PN2(*)
       CHARACTER*100 M2(*)
       CHARACTER*12 PN
       CHARACTER*30 L,F
       CHARACTER*100 M

       IF(IC.GE.N)THEN
        WRITE(*,*)'ADDRESS BOOK FULL'
        WRITE(*,*)'ENTRY NOT ADDED'
        RETURN
       ENDIF
       CALL ENTRY(L,F,PN,M)
       IC=IC+1
       L2(IC)=L
       F2(IC)=F
       PN2(IC)=PN
       M2(IC)=M
       RETURN
       END
C **********************************************************************
