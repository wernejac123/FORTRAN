C **********************************************************************
C F77 SUBROUTINE PRINT ITOP ELEMENTS OF STACK(DOUBLEPRECISION)
C FOR DEBUGGING 
C IF NOT EMPTY
C WARNING USES IMPLICIT TYPING
C PAUSES FOR IX INPUT EVERY 20 LINES
C **********************************************************************
C LABELS USED:97999
C **********************************************************************
C CONSTANTS:NONE
C **********************************************************************
C VARIABLES:
C STACK:STACK (TYPE DOUBLEPRECISION)
C ITOP:TOP OF STACK
C IX:READ FROM USER TO CONTINUE
C **********************************************************************
      SUBROUTINE  PDSTACK(STACK,ITOP)
      DOUBLEPRECISION STACK(*)

      IF(ITOP.EQ.0)THEN
       WRITE(*,*)'STACK IS EMPTY.'
       WRITE(*,*)
       RETURN
      ENDIF

      WRITE(*,*)'ITOP:',ITOP
      DO 97999 I=1,ITOP
       WRITE(*,'(A6,I4,A2,D17.9)')'STACK(',I,'):',STACK(I)
       IF(MOD(I,20).EQ.0) READ(*,*)IX
97999 CONTINUE

      RETURN
      END
C **********************************************************************
