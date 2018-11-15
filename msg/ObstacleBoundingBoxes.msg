Header header

std_msgs/MultiArrayDimension layout   # Layout of point-array
geometry_msgs/Point32[] points        # Actual data-points, (min_pt, max_pt)
float32[] distances                   # distances to each box, index corresponding to points