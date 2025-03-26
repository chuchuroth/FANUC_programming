! a programm with basic loops and conditions

R[1]=0 ;
LBL[1] ;
L P[1] 100% FINE ;
DO[1]=ON ;
WAIT 500 ;
L P[2] 100% FINE ;
DO[1]=OFF ;
WAIT 500 ;
R[1]=R[1]+1 ;
IF R[1]<10, JMP LBL[1] ;
