C **********************************************************************
C F77 SUBROUTINE POP STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:INTEGER STACK
C ITOP:MARKS THE TOP OF STACK
C **********************************************************************
      SUBROUTINE IPOP(STACK,ITOP)
      INTEGER STACK(*)
      
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
