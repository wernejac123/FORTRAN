C **********************************************************************
C F77 SUBROUTINE PRINT ITOP ELEMENTS OF STACK(LOGICAL) 
C (FOR DEBUGGING) IF NOT EMPTY
C WARNING USES IMPLICIT TYPING
C PAUSES FOR IX INPUT EVERY 20 LINES
C **********************************************************************
C LABELS USED:96999
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:STACK(LOGICAL)
C ITOP:TOP OF STACK
C IX:READ FROM USER TO CONTINUE
C **********************************************************************
      SUBROUTINE  PLSTACK(STACK,ITOP)
      LOGICAL STACK(*)

      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

      WRITE(*,*)'ITOP:',ITOP
      DO 96999 I=1,ITOP
       WRITE(*,*)'STACK(',I,'):',STACK(I)
       IF(MOD(I,20).EQ.0) READ(*,*)IX
96999 CONTINUE

      RETURN
      END
C **********************************************************************
