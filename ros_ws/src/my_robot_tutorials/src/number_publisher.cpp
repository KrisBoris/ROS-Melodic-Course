#include <ros/ros.h>
#include <std_msgs/Int64.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "number_publisher");
    ros::NodeHandle nh;
    ros::Publisher publisher = nh.advertise<std_msgs::Int64>("number", 10);
    double frequency;
    nh.getParam("/number_publisher_freq", frequency);
    ros::Rate rate(frequency);
    const int number = 4;
    ROS_INFO("number_publisher node has been created");
    
    while(ros::ok()) {
        std_msgs::Int64 msg;
        msg.data = number;
        publisher.publish(msg);
        rate.sleep();
    }

    return 0;
}