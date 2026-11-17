C **********************************************************************
C F77 SUBROUTINE POP STACK (LOGICAL)
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:LOGICAL STACK
C ITOP:TOP OF STACK 
C **********************************************************************
      SUBROUTINE LPOP(STACK,ITOP)
      LOGICAL STACK(*)
      
      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

      STACK(ITOP)=.FALSE.
      ITOP=ITOP-1

      RETURN
      END
C **********************************************************************
