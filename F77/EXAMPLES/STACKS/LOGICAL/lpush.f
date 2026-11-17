C **********************************************************************
C F77 SUBROUTINE PUSH X (LOGICAL) ONTO STACK  
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:LOGICAL STACK
C ITOP:TOP OF STACK
C X:LOGICAL VALUE TO PUSH
C **********************************************************************
      SUBROUTINE LPUSH(STACK,N,ITOP,X)
      LOGICAL STACK(*)
      LOGICAL X
      
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
