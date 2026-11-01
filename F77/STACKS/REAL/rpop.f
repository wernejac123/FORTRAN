C **********************************************************************
C F77 SUBROUTINE POP STACK (REAL)
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C LABELS USED:NONE
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:REAL STACK
C BUFF:HOLD 1 VALUE POPPED OFF STACK 
C ITOP:MARKS THE TOP OF STACK
C **********************************************************************
      SUBROUTINE RPOP(STACK,BUFF,ITOP)
      REAL STACK(*)
      
      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

C COPY VALUES POPPED OFF STACK IN BUFF (REVERSE ORDER)    
      BUFF=STACK(ITOP)  
      STACK(ITOP)=0
      ITOP=ITOP-1

      RETURN
      END
C **********************************************************************
