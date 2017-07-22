cmake_minimum_required(VERSION 2.8.3)
project(kylinbot_core)

find_package(catkin REQUIRED COMPONENTS
   tf
   roscpp
   rospy
   std_msgs
   geometry_msgs
   message_generation
)

add_message_files(
  FILES
  CBUS.msg
  Kylin.msg
  PosCalib.msg
  Sonar.msg
  VirtualRC.msg
  ZGyro.msg
  UWB.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
)

FILE(GLOB sourcefiles "src/asp/src/*.c" "src/uart/src/*.cpp")
include_directories(/usr/local/include include include/asp/inc include/uart/inc ${catkin_INCLUDE_DIRS})

add_executable(kylinbot_msg_puller ${sourcefiles} src/kylinbot_msg_puller.cpp)
target_link_libraries(kylinbot_msg_puller ${catkin_LIBRARIES})

add_executable(kylinbot_msg_pusher ${sourcefiles} src/kylinbot_msg_pusher.cpp)
target_link_libraries(kylinbot_msg_pusher ${catkin_LIBRARIES})

add_executable(kylinbot_logic_controller ${sourcefiles} src/kylinbot_logic_controller.cpp)
target_link_libraries(kylinbot_logic_controller ${catkin_LIBRARIES})

add_executable(kylinbot_rc_playback ${sourcefiles} src/kylinbot_rc_playback.cpp)
target_link_libraries(kylinbot_rc_playback ${catkin_LIBRARIES})

add_executable(kylinbot_cmd_vel ${sourcefiles} src/kylinbot_cmd_vel.cpp)
target_link_libraries(kylinbot_cmd_vel ${catkin_LIBRARIES})


