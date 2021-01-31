
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-config";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_config/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "eb70fdefa26f5e7a93189bc21a8ce3b70804c670db2bbcf51116ef21d0955a1b";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
