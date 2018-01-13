Header header

# The number of robots detected (the length of the arrays)
uint8 count

# The regions of the detected robots in the image
sensor_msgs/RegionOfInterest[] detected_robots

# The camera number this robot was detected in (0 = down), (1 = front), (2 = left), (3 = back), (4 = right)
uint8[] camera_number

# The direction of the robot in radians in the picture
float32[] direction

# The probability that the direction estimate is correct
float32[] direction_probability

# The color of the robot (1 = red), (2 = green), (3 = grey / pole robot) (0 = unknown)
uint8[] color
