
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-nav2-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/nav2_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "c69f01e0f11d8a1b1378385275606bb94573be8333bd85a9a174a5a20912aa8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
