C **********************************************************************
C F77 SUBROUTINE LOOKUP BY LAST NAME
C INCONSISTENT WITH PLLOoK() DOES NOT PRIINT 'NOT FOUND'
C **********************************************************************
C VARIABLES
C IC:SIZE OF ARRAYS
C L2:ARRAY OF STRINGS OF LAST NAMES
C F2:ARRAY OF STRINGS OF FIRST NAMES
C PN2:ARRAY OF STRINGS OF PHONE NUMBERS
C M2:ARRAY OF STRINGS OF MEMOS
C **********************************************************************
      SUBROUTINE LLOOK(IC,L2,F2,PN2,M2)
      CHARACTER*30 L2(*),F2(*)
      CHARACTER*12 PN2(*)
      CHARACTER*100 M2(*)
      CHARACTER*30 L
      I=1

      WRITE(*,*)'LAST NAME'
      READ(*,*)L

500   IF(I.LE.IC)THEN
       IF(L2(I).EQ.L)THEN
        WRITE(*,*)'FOUND'
        WRITE(*,'(A30,X,A30,X,A12,X,A100)')L2(I),F2(I),PN2(I),M2(I)
       ENDIF
       I=I+1
       GOTO 500
      ENDIF

      RETURN
      END
C **********************************************************************
