C **********************************************************************
C F77 SUBROUTINE POP STACK(DOUBLEPRECISION)
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:DOUBLEPRECISION STACK
C ITOP:TOP OF STACK 
C **********************************************************************
      SUBROUTINE DPOP(STACK,ITOP)
      DOUBLEPRECISION STACK(*)
      
      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

      STACK(ITOP)=0
      ITOP=ITOP-1

      RETURN
      END
C **********************************************************************
