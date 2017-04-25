# ascend_msgs

[![Build Status](http://build.ascendntnu.no/job/ascend_msgs/badge/icon)](http://build.ascendntnu.no/job/ascend_msgs/)

This ROS package contains all custom ROS message types used in all workspaces

### Before you add a new custom message: are you _really_ sure you need one?
First have a look in the [common_msgs](http://wiki.ros.org/common_msgs?distro=kinetic) package to find out if any of the message types included in ROS works for you.

### Adding a new message type
Create a new message description file in [msg](msg)

Add the message in the list of messages in the CMakeLists.txt file in this repo
```txt
## Generate messages in the 'msg' folder
add_message_files(
   FILES
   LineCounter.msg
)
```

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
```txt
add_dependencies(<your executable> ascend_msgs_generate_messages_cpp)
```

Include the messages in your source code, i.e.
```cpp
#include <ascend_msgs/LineCounter.h>
```
