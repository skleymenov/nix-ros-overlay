
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-rosparam-handler";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/cbandera/rosparam_handler-release/archive/release/melodic/rosparam_handler/0.1.4-1.tar.gz;
    sha256 = "b11ba2d257e5c7fc2c50f3e9eea117867178ed67a74906e21ebfad9f222f3fba";
  };

  buildInputs = [ rostest ];
  checkInputs = [ roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An easy wrapper for using parameters in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}