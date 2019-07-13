# Operation constants (enum)
uint8 OPERATION_INIT = 0
uint8 OPERATION_TAKEOFF = 1
uint8 OPERATION_LAND = 2
uint8 OPERATION_MOVE = 3
uint8 OPERATION_POSITION_FOLLOW = 4

geometry_msgs/Pose pose
uint8 operation # The operation type (values defined above)

