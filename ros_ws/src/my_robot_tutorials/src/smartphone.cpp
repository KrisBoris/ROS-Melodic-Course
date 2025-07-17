#include <ros/ros.h>
#include <std_msgs/String.h>

void callback_subscription(const std_msgs::String& msg)
{
    ROS_INFO("%s", msg.data.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "smartphone");
    ros::NodeHandle nh;
    ros::Subscriber subscriber = nh.subscribe("robot_news_radio", 10, callback_subscription);

    ros::spin();
}