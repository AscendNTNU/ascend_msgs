Header header

# The number of detected robots
uint8 count

# The global position of the detected robots
geometry_msgs/Point32[] global_robot_position

# The color / type of the detected robots
uint8[] robot_color

# The estimated direction of the robot in radians
float32[] direction

# The probability that the direction estimate is correct
float32[] direction_probability
