C ********************************************************************** 
C F77 PROGRAM TEST DOUBLEPRECISION STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C SUBROUTINE DPOP(STACK,ITOP):POP STACK LABELS:NONE
C SUBROUTINE DPUSH(STACK,ITOP,IX):PUSH X ONTO STACK LABELS:NONE
C SUBROUTINE PDSTACK(STACK,TOP):PRINT STACK(DOUBLEPRECISION) LABELS:97999
C **********************************************************************
C FUNCTIONS:NONE
C * ********************************************************************
C LABELS:10000,19999
C *********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C N1:ELEMENTS IN STACK DSTACK1
C DSTACK1(IN1):REAL STACK (100 ELEMENTS)
C IDTOP1:TOP OF RSTACK1
C X:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM DTEST
      PARAMETER(N1=100)
      DOUBLEPRECISION DSTACK1(N1),X
      IDTOP1=0
C **********************************************************************
C MENU1
10000 WRITE(*,*)'1. PUSH X ONTO STACK'
      WRITE(*,*)'2. POP STACK'
      WRITE(*,*)'3. PRINT STACK'
      WRITE(*,*)'4. QUIT'

      READ(*,*)IN
      IF(IN.EQ.1)THEN
       WRITE(*,*)'X(DOUBLEPRECISION):'
       READ(*,*)X
       WRITE(*,*)'PUSHING ',X,' ONTO THE STACK.'
       CALL DPUSH(DSTACK1,N1,IDTOP1,X)
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL DPOP(DSTACK1,IDTOP1)
      ELSEIF(IN.EQ.3)THEN
       CALL PDSTACK(DSTACK1,IDTOP1)  
      ELSEIF(IN.EQ.4)THEN
       GOTO 19999
      ELSE 
       WRITE(*,*)'INVALID'
       GOTO 10000
      ENDIF
      GOTO 10000
C **********************************************************************
19999 STOP
      END
C **********************************************************************
