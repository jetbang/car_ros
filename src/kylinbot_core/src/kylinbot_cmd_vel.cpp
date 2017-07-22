
/**
 * Copyright (c) 2016, Jack Mo (mobangjack@foxmail.com).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "ros/ros.h"
#include "std_msgs/String.h"

#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

#include <sstream>

#include "asp.h"
#include "uart.h"

#include "kylinbot_core/Kylin.h"
#include "kylinbot_core/VirtualRC.h"
#include <geometry_msgs/Twist.h>

ros::Publisher* pubptr = NULL;
kylinbot_core::Kylin kylin;

void velCallback(const geometry_msgs::Twist::ConstPtr& twist)
{
  //kylinbot_core::Kylin kylin;
  kylin.cbus.vx = -twist->linear.y * 1000;
  kylin.cbus.vy = twist->linear.x * 1000;
  kylin.cbus.vz = -twist->angular.z * 1000;
  
  //pubptr->publish(kylin);
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "kylinbot_cmd_vel");

  int spin_rate = 100;
  
  ros::NodeHandle np("~");
  np.param<int>("spin_rate", spin_rate, 30); 
  
  ros::NodeHandle n;

  ros::Subscriber vel_sub = n.subscribe<geometry_msgs::Twist>("cmd_vel", 1000, velCallback); // Odometry feedback listenner
  
  ros::Publisher cmd_pub = n.advertise<kylinbot_core::Kylin>("cmd", 1000); // Command advertiser

  pubptr = &cmd_pub;
   
  ros::Rate rate(spin_rate);

  while (ros::ok())
  {

    ros::spinOnce();

    pubptr->publish(kylin);
  
    rate.sleep();
  }

  return 0;
}



