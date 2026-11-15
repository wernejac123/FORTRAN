C *********************************************************************
C SUBROUTINE GET ENTRY FROM USER
C VARIABLES
C L:LAST NAME
C F:FIRST NAME
C PN:PHONE NUMBER
C M:MEMO
C **********************************************************************
      SUBROUTINE ENTRY(L,F,PN,M)
      CHARACTER*30 L,F
      CHARACTER*12 PN
      CHARACTER*100 M
      WRITE(*,*)'L,F,PN,M:'
      READ(*,*)L,F,PN,M
      RETURN
      END
C *********************************************************************
