C **********************************************************************
C F77 SUBROUTINE PUSH IX ONTO STACK  
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:
C N:ELEMENTS IN ISTACK
C **********************************************************************
C VARIABLES:
C STACK:INTEGER STACK
C ITOP:MARKS THE TOP OF STACK
C IX:INTEGER TO PUSH
C **********************************************************************
      SUBROUTINE IPUSH(STACK,N,ITOP,IX)
      INTEGER STACK(*)
      
      IF(ITOP.GE.N)THEN
       WRITE(*,*)'STACK IS FULL.'
       WRITE(*,*)
       RETURN
      ENDIF
     
      ITOP=ITOP+1
      STACK(ITOP)=IX
      
      RETURN
      END
C **********************************************************************
