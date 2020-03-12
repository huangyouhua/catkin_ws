# Install script for directory: /home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup/catkin_generated/installspace/turtlebot3_manipulation_bringup.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_bringup/cmake" TYPE FILE FILES
    "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup/catkin_generated/installspace/turtlebot3_manipulation_bringupConfig.cmake"
    "/home/hyh/catkin_ws/build/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup/catkin_generated/installspace/turtlebot3_manipulation_bringupConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_bringup" TYPE FILE FILES "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup" TYPE EXECUTABLE FILES "/home/hyh/catkin_ws/devel/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_manipulation_bringup/turtlebot3_manipulation_bringup")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_manipulation_bringup" TYPE DIRECTORY FILES "/home/hyh/catkin_ws/src/open_manipulator_with_tb3/open_manipulator_with_tb3/turtlebot3_manipulation_bringup/launch")
endif()

