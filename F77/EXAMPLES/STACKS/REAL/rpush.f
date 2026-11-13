C **********************************************************************
C F77 SUBROUTINE PUSH X (REAL) ONTO STACK  
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:REAL STACK
C ITOP:TOP OF STACK
C X:REAL VALUE TO PUSH
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
