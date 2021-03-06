
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-hls-lfcd-lds-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/hls-lfcd-lds-driver-release/archive/release/melodic/hls_lfcd_lds_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "d178dcdb4efd0c7550eaa85e02e59e874221e0fb3a34e2c1c21b136fbcfc16d5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
