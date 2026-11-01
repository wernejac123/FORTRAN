C ********************************************************************** 
C F77 PROGRAM TEST REAL STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C PR_STACK(STACK,TOP):PRINT STACK (DEBUGGING) LABELS USED:99999
C IPUSH(STACK,ITOP,IX):PUSH IX ONTO STACK LABELS:NONE
C IPOP(STACK,ITOP):POP STACK LABELS:NONE
C **********************************************************************
C CONSTANTS
C IRN1:ELEMENTS IN REAL STACK RSTACK1 AND RBUFF1
C **********************************************************************
C VARIABLES
C RSTACK1(IN1):REAL STACK (100 ELEMENTS)
C RBUFF1:STORES 1 VALUE POPPED OFF STACK
C IRTOP1: MARKS THE TOP OF STACK RSTACK1
C X:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM RTEST
      PARAMETER(IRN1=100)
      REAL RSTACK1(IRN1)
      IRTOP1=0
      RBUFF1=0
C **********************************************************************
C MENU1
10000 WRITE(*,*)'1. PUSH X ONTO STACK'
      WRITE(*,*)'2. POP STACK'
      WRITE(*,*)'3. PRINT STACK'
      WRITE(*,*)'4. PRINT BUFF'
      WRITE(*,*)'5. QUIT'

      READ(*,*)IRMENU1
      IF(IRMENU1.EQ.1)THEN
       WRITE(*,*)'X:'
       READ(*,*)X
       WRITE(*,*)'PUSHING ',X,' ONTO THE STACK.'
       CALL RPUSH(RSTACK1,IRN1,IRTOP1,X)
      ELSEIF(IRMENU1.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL RPOP(RSTACK1,RBUFF1,IRTOP1)
      ELSEIF(IRMENU1.EQ.3)THEN
       CALL PR_STACK(RSTACK1,IRTOP1)
      ELSEIF(IRMENU1.EQ.4)THEN
       WRITE(*,*)'RBUFF1=',RBUFF1  
      ELSEIF(IRMENU1.EQ.5)THEN
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
