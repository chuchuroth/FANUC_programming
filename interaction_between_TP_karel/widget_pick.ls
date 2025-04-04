! This TP script moves the robot to pick and place parts, calling a Karel program to handle the counter and logging.

 1: UFRAME[1] ; ! Conveyor workspace frame
 2: UTOOL[1] ; ! Gripper tool
 3: LBL[1] ; ! Start loop
 4: IF DI[1]=OFF, JMP LBL[10] ; ! Wait for part sensor
 5: L P[1] 500mm/sec FINE ; ! Move to pick position
 6: DO[1]=ON ; ! Close gripper
 7: WAIT 0.5 ; ! Wait 0.5s
 8: L P[2] 500mm/sec FINE ; ! Move to place position
 9: DO[1]=OFF ; ! Open gripper
10: CALL_PROG('CHECK_COUNT') ; ! Call Karel to update counter/log
11: JMP LBL[1] ; ! Loop back
12: LBL[10] ; ! End
