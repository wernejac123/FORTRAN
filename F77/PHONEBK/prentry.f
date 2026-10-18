C **********************************************************************
C F77 SUBROUTINE PRINT ARRAY OF ENTRIES
C **********************************************************************
C VARIABLES
C N:ELEMENTS TO PRINT
C L2:ARRAY OF STRINGS OF LAST NAMES
C F2:ARRAY OF STRINGS OF FIRST NAMES
C PN2:ARRAY OF STRINGS OF PHONE NUMBERS
C M2:ARRAY OF STRINGS OF MEMOS
C **********************************************************************
      SUBROUTINE PRENTRY(N,L2,F2,PN2,M2)
      CHARACTER*30 L2(*),F2(*)
      CHARACTER*12 PN2(*)
      CHARACTER*100 M2(*)

      WRITE(*,*)'I,L2,F2,PN2,M2:'
      DO 400 I=1,N
       WRITE(*,'(I4,X,A30,X,A30,X,A12,X,A100)')I,L2(I),F2(I),PN2(I),M2(I
     +)
400   CONTINUE
      RETURN
      END
C **********************************************************************
