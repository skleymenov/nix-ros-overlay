
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dynamixel-sdk, geometry-msgs, message-filters, nav-msgs, rclcpp, rcutils, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-eloquent-turtlebot3-node";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/eloquent/turtlebot3_node/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "807468ee08c5566092132d13b834aa45ae27547d09557012ff6ef40429810d22";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ dynamixel-sdk geometry-msgs message-filters nav-msgs rclcpp rcutils sensor-msgs std-msgs std-srvs tf2 tf2-ros turtlebot3-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TurtleBot3 driver node that include diff drive controller, odometry and tf node'';
    license = with lib.licenses; [ asl20 ];
  };
}
