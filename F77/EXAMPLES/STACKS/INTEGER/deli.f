C **********************************************************************
C F77 SUBROUTINE DELETE ENTRY BY INDEX
C **********************************************************************
C VARIABLES
C N:COUNT OF ENTRIES USED
C L2:ARRAY OF STRINGS OF LAST NAMES
C F2:ARRAY OF STRINGS OF FIRST NAMES
C PN2:ARRAY OF STRINGS OF PHONE NUMBERS
C M2:ARRAY OF STRINGS OF MEMOS
C IX:INDEX TO DELETE
C **********************************************************************
      SUBROUTINE DELI(N,L2,F2,PN2,M2,IX)
      CHARACTER*30 L2(*),F2(*)
      CHARACTER*12 PN2(*)
      CHARACTER*100 M2(*)

      IF(IX.GT.N)THEN
       WRITE(*,*)'ERROR:',IX,'.GT.',N
       RETURN
      ENDIF

      I=IX

1000  IF(I.LE.(N-1))THEN
       L2(I)=L2(I+1)
       F2(I)=F2(I+1)
       PN2(I)=PN2(I+1)
       M2(I)=M2(I+1)
       I=I+1
       GOTO 1000
      ENDIF
      N=N-1

      RETURN
      END
