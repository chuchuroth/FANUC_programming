1: IF DI[1]=ON, L P[1] 100% FINE ;  (Move to pick position if PLC signals part ready)
2: ELSE JMP LBL[1] ;  (Wait if not ready)
3: LBL[1] ;
