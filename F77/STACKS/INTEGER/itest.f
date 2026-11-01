C ********************************************************************** 
C F77 PROGRAM TEST INTEGER STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C PR_ISTACK(STACK,TOP):PRINT STACK (DEBUGGING) LABELS USED:99999
C IPUSH(STACK,ITOP,IX):PUSH IX ONTO STACK LABELS:NONE
C IPOP(STACK,ITOP):POP STACK LABELS:NONE
C **********************************************************************
C CONSTANTS
C IN1:ELEMENTS IN INTEGER STACK ISTACK1 AND IBUFF
C **********************************************************************
C VARIABLES
C STACK1(IN1):INTEGER STACK (100 ELEMENTS)
C IBUFF:STORES 1 VALUE POPPED OFF STACK
C ITOP1: MARKS THE TOP OF STACK ISTACK1
C IX:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM ITEST
      PARAMETER(IN1=100)
      INTEGER ISTACK1(IN1)
      ITOP1=0
      IBUFF=0
C **********************************************************************
C MENU1
10000 WRITE(*,*)'1. PUSH IX ONTO STACK'
      WRITE(*,*)'2. POP STACK'
      WRITE(*,*)'3. PRINT STACK'
      WRITE(*,*)'4. PRINT IBUFF'
      WRITE(*,*)'5. QUIT'

      READ(*,*)IMENU1
      IF(IMENU1.EQ.1)THEN
       WRITE(*,*)'IX:'
       READ(*,*)IX
       WRITE(*,*)'PUSHING ',IX,' ONTO THE STACK.'
       CALL IPUSH(ISTACK1,IN1,ITOP1,IX)
      ELSEIF(IMENU1.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL IPOP(ISTACK1,IBUFF,ITOP1)
      ELSEIF(IMENU1.EQ.3)THEN
       CALL PR_ISTACK(ISTACK1,ITOP1)
      ELSEIF(IMENU1.EQ.4)THEN
        WRITE(*,*)'IBUFF=',IBUFF  
      ELSEIF(IMENU1.EQ.5)THEN
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
