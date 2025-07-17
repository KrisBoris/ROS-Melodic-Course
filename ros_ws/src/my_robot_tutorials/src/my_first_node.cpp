#include "ros/ros.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "my_first_cpp_node");
    ros::NodeHandle nh;  
    ROS_INFO("Node has been created");

    ros::Rate rate(10);
    
    while(ros::ok()) {
    	ROS_INFO("Standing here...");
	rate.sleep();
    }

    return 0;
}
