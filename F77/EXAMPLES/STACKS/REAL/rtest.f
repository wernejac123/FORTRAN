C ********************************************************************** 
C F77 PROGRAM TEST REAL STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C SUBROUTINE RPOP(STACK,ITOP):POP STACK LABELS:NONE
C SUBROUTINE RPUSH(STACK,ITOP,IX):PUSH IX ONTO STACK LABELS:NONE
C SUBROUTINE PRSTACK(STACK,TOP):PRINT STACK(REAL) LABELS:99999
C **********************************************************************
C FUNCTIONS:NONE
C * ********************************************************************
C LABELS:10000,19999
C *********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C N1:ELEMENTS IN STACK RSTACK1
C RSTACK1(IN1):REAL STACK (100 ELEMENTS)
C IRTOP1:TOP OF RSTACK1
C X:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM RTEST
      PARAMETER(N1=100)
      REAL RSTACK1(N1)
      IRTOP1=0
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
       CALL RPUSH(RSTACK1,N1,IRTOP1,X)
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL RPOP(RSTACK1,IRTOP1)
      ELSEIF(IN.EQ.3)THEN
       CALL PRSTACK(RSTACK1,IRTOP1)  
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
