C ***********************************************************************
C F77 SUBROUTINE LOOKUP BY PHONE NUMBER
C ***********************************************************************
C VARIABLES
C IC:USED ELEMENTS
C L2:ARRAY OF STRINGS OF LAST NAMES
C F2:ARRAY OF STRINGS OF FIRST NAMES
C PN2:ARRAY OF STRINGS OF PHONE NUMBERS
C M2:ARRAY OF STRINGS OF MEMOS
C **********************************************************************
      SUBROUTINE PLOOK(IC,L2,F2,PN2,M2)
      CHARACTER*30 L2(*),F2(*)
      CHARACTER*12 PN2(*)
      CHARACTER*100 M2(*)
      CHARACTER*12 PN

      WRITE(*,*)'PN:'
      READ(*,*)PN

      DO 110 I=1,IC,1
       IF(PN2(I).EQ.PN)THEN
        WRITE(*,*)'FOUND'
        WRITE(*,'(A30,X,A30,X,A12,X,A100)') L2(I),F2(I),PN2(I),M2(I)
        RETURN
       ENDIF
110   CONTINUE
      WRITE(*,*)'NOT FOUND'
      RETURN
      END
C **********************************************************************
