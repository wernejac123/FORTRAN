C **********************************************************************
C F77 PROGRAM TO CALCULATE AREA AND PERIMETER OF SQUARE,RECTANGLE,
C TRIANGLE,OR CIRCLE
C **********************************************************************
C VARIABLES
C A,B,C:SIDES
C H:HEIGHT (FOR TRIANGLE)
C AR:AREA
C PR:PERIMETER(CIRCUMFERENCE FOR CIRCLE)
C R:RADIUS (FOR CIRCLE)
C **********************************************************************
C CONSTANTS PI (FOR CIRCLE)
C **********************************************************************
      PROGRAM AREA
      PARAMETER(PI=3.141592654)
C **********************************************************************
C MENU
100   WRITE(*,*)'1. SQUARE'
      WRITE(*,*)'2. RECTANGLE'
      WRITE(*,*)'3. TRIANGLE'
      WRITE(*,*)'4. CIRCLE'
      WRITE(*,*)'5. QUIT'
C ********************************************************************** 
200   READ(*,*)IN
      IF(IN.EQ.1)THEN
       WRITE(*,*)'A:'
       READ(*,*)A
       PR=4.0*A
       AR=A*A
      ELSEIF(IN.EQ.2)THEN
       WRITE(*,*)'A,B:'
       READ(*,*)A,B
       PR=2.0*(A+B)
       AR=A*B
      ELSEIF(IN.EQ.3)THEN
       WRITE(*,*)'A,B,C,H:'
       READ(*,*)A,B,C,H
       PR=A+B+C
       AR=.5*B*H
      ELSEIF(IN.EQ.4)THEN
       WRITE(*,*)'R'
       READ(*,*)R
       PR=2.0*PI*R
       AR=PI*(R*R)
      ELSEIF(IN.EQ.5)THEN
       GOTO 999
      ELSE
       WRITE(*,*)'INVALID'
       GOTO 200
      ENDIF

      WRITE(*,950)PR
      WRITE(*,975)AR
      GOTO 100

950   FORMAT(10HPERIMETER:,X,F9.2)
975   FORMAT(5HAREA:,X,F9.2)
999   STOP
      END
