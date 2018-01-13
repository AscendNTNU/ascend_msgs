Header header

# The number of detected robots
uint8 count

# The global position of the detected robots
geometry_msgs/Point32[] global_robot_position

# The direction of the robot in radians counter clockwise with 0 being +x
float32[] direction

# The color / type of the detected robots
# 1 = red, 2 = green, 3 = grey/pole robot
uint8[] robot_color

# The probability that the direction estimate is correct
float32[] direction_probability
