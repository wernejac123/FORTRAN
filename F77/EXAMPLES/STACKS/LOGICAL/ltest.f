C ********************************************************************** 
C F77 PROGRAM TEST LOGICAL STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C SUBROUTINE LPOP(STACK,ITOP):POP STACK LABELS:NONE
C SUBROUTINE LPUSH(STACK,ITOP,IX):PUSH IX ONTO STACK LABELS:NONE
C SUBROUTINE PLSTACK(STACK,TOP):PRINT STACK(REAL) LABELS:96999
C **********************************************************************
C FUNCTIONS:NONE
C * ********************************************************************
C LABELS:10000,19999
C *********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C N1:ELEMENTS IN LSTACK1
C LSTACK1(N1):LOGICAL STACK (100 ELEMENTS)
C ILTOP1:TOP OF LSTACK1
C X:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM LTEST
      PARAMETER(N1=100)
      LOGICAL LSTACK1(N1),X
      ILTOP1=0
C **********************************************************************
C MENU1
10000 WRITE(*,*)'1. PUSH X ONTO STACK'
      WRITE(*,*)'2. POP STACK'
      WRITE(*,*)'3. PRINT STACK'
      WRITE(*,*)'4. QUIT'

      READ(*,*)IN
      IF(IN.EQ.1)THEN
       WRITE(*,*)'X:'
       READ(*,*)X
       WRITE(*,*)'PUSHING ',X,' ONTO THE STACK.'
       CALL LPUSH(LSTACK1,N1,ILTOP1,X)
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL LPOP(LSTACK1,ILTOP1)
      ELSEIF(IN.EQ.3)THEN
       CALL PLSTACK(LSTACK1,ILTOP1)  
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
