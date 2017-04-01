# ascend_msgs

[![Build Status](http://build.ascendntnu.no/job/ascend_msgs/badge/icon)](http://build.ascendntnu.no/job/ascend_msgs/)

This ROS package contains all custom ROS message types used in all workspaces

### Adding a new message type
Create a new message description file in [msg](msg)

### Using the messages in your package
In your `package.xml`, add these dependencies
```xml
<build_depend>ascend_msgs</build_depend>
<run_depend>ascend_msgs</run_depend>
```
Add it to your `CMakeLists.txt`
```txt
find_package(catkin REQUIRED COMPONENTS roscpp ascend_msgs)
```
```txt
catkin_package(
    INCLUDE_DIRS
    LIBRARIES
    CATKIN_DEPENDS roscpp ascend_msgs
    DEPENDS
)
```
Include the messages in your source code, i.e.
```cpp
#include <ascend_msgs/H264Frame.h>
```
