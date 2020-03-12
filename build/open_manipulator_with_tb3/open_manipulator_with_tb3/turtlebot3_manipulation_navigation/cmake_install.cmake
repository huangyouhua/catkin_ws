# Install script for directory: /home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hyh/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/catkin_generated/installspace/turtlebot3_manipulation_navigation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_navigation/cmake" TYPE FILE FILES
    "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/catkin_generated/installspace/turtlebot3_manipulation_navigationConfig.cmake"
    "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/catkin_generated/installspace/turtlebot3_manipulation_navigationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_navigation" TYPE FILE FILES "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_navigation" TYPE DIRECTORY FILES
    "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/maps"
    "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/launch"
    "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_navigation/rviz"
    )
endif()
