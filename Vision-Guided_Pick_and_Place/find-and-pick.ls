! A robot picks parts using a camera to find them.

VISION RUN_FIND 'Part'   ! Find part with camera
VISION GET_OFFSET 'Part' VR[1]   ! Get position offset
L P[1] 500mm/sec FINE   ! Move to adjusted pick position
