! Process: Use the teach pendant to manually jog the robot to the pick-up location and record it as P[1], then to the place location and record as P[2]. This involves:
! Selecting the position register (e.g., P[1]) via the pendant.
! Using jog controls (e.g., COORD mode for Cartesian movement) to position the robot.
! Pressing the “Record” button to save the position, ensuring no collisions or unreachable points.
R[1]=0 ;  (Initialize cycle count in numeric register R[1])
LBL[1] ;
L P[1] 100% FINE ;
DO[1]=ON ;
WAIT 500 ;
L P[2] 100% FINE ;
DO[1]=OFF ;
WAIT 500 ;
R[1]=R[1]+1 ;  (Increment counter)
IF R[1]<10, JMP LBL[1] ;  (Jump back if less than 10 cycles)

