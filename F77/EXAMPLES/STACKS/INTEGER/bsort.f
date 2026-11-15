C **********************************************************************
C F77 SUBROUTINE BUBBLE SORT ENTRIES (BY LASTNAME)
C **********************************************************************
C VARIABLES
C N:NUM OF ENTRIES TO SORT
C L:ARRAY OF STRINGS OF LAST NAMES
C F:ARRAY OF STRINGS OF FIRST NAMES
C PN:ARRAY OF STRINGS OF PHONE NUMBERS
C M:ARRAY OF STRINGS OF MEMOS
C **********************************************************************
C TEMPORARY ARRAYS
C TL,TF,TPN,TM
C **********************************************************************
C T:TEMP ARRAY
C **********************************************************************
      SUBROUTINE BSORT(N,L,F,PN,M)
      CHARACTER*30 L(*),F(*)
      CHARACTER*12 PN(*)
      CHARACTER*100 M(*)
      CHARACTER*30 TL,TF
      CHARACTER*12 TPN
      CHARACTER*100 TM
C **********************************************************************
C BUBBLE SORT
      DO 325 I=N,2,-1
       DO 300 J=1,N-1,1
        IF(L(J).GT.L(J+1))THEN
         TL=L(J)
         TF=F(J)
         TPN=PN(J)
         TM=M(J)
         L(J)=L(J+1)
         F(J)=F(J+1)
         PN(J)=PN(J+1)
         M(J)=M(J+1)
         L(J+1)=TL
         F(J+1)=TF
         PN(J+1)=TPN
         M(J+1)=TM
        ENDIF
300    CONTINUE
325   CONTINUE      
      WRITE(*,*)'FILE SORTED'
      RETURN
      END
C **********************************************************************

