! A robot stacks boxes on a pallet from a conveyor.
L P[1] 500mm/sec FINE   ! Pick position
DO[1]=ON   ! Close gripper
L P[2] 500mm/sec FINE   ! Place position
DO[1]=OFF  ! Open gripper
R[1]=R[1]+1   ! Increment layer count
IF R[1]<5 THEN JMP LBL[1]   ! Repeat for 5 layers
