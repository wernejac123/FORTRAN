C ********************************************************************** 
C F77 PROGRAM TEST INTEGER STACK
C WARNING USES IMPLICIT TYPING
C **********************************************************************
C SUBROUTINES: 
C SUBROUTINE IPOP(STACK,ITOP):POP ISTACK
C SUBROUTINE IPUSH(STACK,N,ITOP,IX):PUSH IX ONTO ISTACK
C SUBROUTINE PRISTACK(STACK,ITOP):PRINT ISTACK (FOR DEBUGGING) 
C **********************************************************************
C LABELS:10000,19999
C **********************************************************************
C CONSTANTS
C IN1:ELEMENTS IN INTEGER STACK ISTACK1 AND IBUFF
C **********************************************************************
C VARIABLES
C STACK1(IN1):INTEGER STACK (100 ELEMENTS)
C ITOP1: MARKS THE TOP OF STACK ISTACK1
C IX:VALUE TO PUSH ONTO STACK
C **********************************************************************
      PROGRAM ITEST
      PARAMETER(IN1=100)
      INTEGER ISTACK1(IN1)
      ITOP1=0
C **********************************************************************
C MENU1
10000 WRITE(*,*)'1. PUSH IX ONTO STACK'
      WRITE(*,*)'2. POP STACK'
      WRITE(*,*)'3. PRINT STACK'
      WRITE(*,*)'4. QUIT'

      READ(*,*)IN
      IF(IN.EQ.1)THEN
       WRITE(*,*)'IX:'
       READ(*,*)IX
       WRITE(*,*)'PUSHING ',IX,' ONTO THE STACK.'
       CALL IPUSH(ISTACK1,IN1,ITOP1,IX)
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'POPPING STACK'
       CALL IPOP(ISTACK1,ITOP1)
      ELSEIF(IN.EQ.3)THEN
       CALL PRISTACK(ISTACK1,ITOP1)  
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
