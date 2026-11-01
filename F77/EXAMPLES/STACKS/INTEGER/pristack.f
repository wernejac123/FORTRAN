C **********************************************************************
C F77 SUBROUTINE PRINT ITOP ELEMENTS OF ISTACK (DEBUGGING) 
C IF NOT EMPTY
C WARNING USES IMPLICIT TYPING
C PAUSES FOR IX INPUT EVERY 20 LINES
C **********************************************************************
C LABELS USED: 999999
C **********************************************************************
C CONSTANTS
C N:ELEMENTS IN ISTACK
C **********************************************************************
C VARIABLES
C STACK: INTEGER STACK
C ITOP:TOP OF STACK
C IX:READ FROM USER TO CONTINUE
C **********************************************************************
      SUBROUTINE  PR_ISTACK(STACK,ITOP)
      INTEGER STACK(*)

      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

      WRITE(*,*)'ITOP:',ITOP
      DO 99999 I=1,ITOP
       WRITE(*,*)'STACK(',I,'):',STACK(I)
       IF(MOD(I,20).EQ.0) READ(*,*)IX
99999 CONTINUE

      RETURN
      END
C **********************************************************************
