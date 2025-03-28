! A FANUC robot picks parts from a conveyor and places them on a pallet, analogy: a ROS node subscribing to a conveyor sensor topic and publishing to a gripper.
UFRAME[1] ; ! Set workspace frame
UTOOL[1] ; ! Set gripper tool
LBL[1] ; ! Start loop
IF DI[1]=OFF, JMP LBL[10] ; ! Wait for part detection
L P[1] 500mm/sec FINE ; ! Move to pick position
DO[1]=ON ; ! Close gripper
WAIT 0.5 ; ! Wait 0.5s for grip
L P[2] 500mm/sec FINE ; ! Move to place position
DO[1]=OFF ; ! Open gripper
JMP LBL[1] ; ! Loop back
LBL[10] ; ! End
