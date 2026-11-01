C **********************************************************************
C F77 SUBROUTINE PUSH X (REAL) ONTO STACK  
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:
C N:ELEMENTS IN STACK
C **********************************************************************
C VARIABLES:
C STACK:REAL STACK
C ITOP:MARKS THE TOP OF STACK
C IX:INTEGER TO PUSH
C **********************************************************************
      SUBROUTINE RPUSH(STACK,N,ITOP,X)
      REAL STACK(*)
      
      IF(ITOP.GE.N)THEN
       WRITE(*,*)'STACK IS FULL.'
       WRITE(*,*)
       RETURN
      ENDIF
     
      ITOP=ITOP+1
      STACK(ITOP)=X
      
      RETURN
      END
C **********************************************************************
