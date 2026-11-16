C **********************************************************************
C F77 SUBROUTINE PUSH X (DOUBLEPRECISION) ONTO STACK  
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:DOUBLEPRECISION STACK
C ITOP:TOP OF STACK
C X:REAL VALUE TO PUSH
C **********************************************************************
      SUBROUTINE DPUSH(STACK,N,ITOP,X)
      DOUBLEPRECISION STACK(*)
      DOUBLEPRECISION X

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
