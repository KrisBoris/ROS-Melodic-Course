#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "robot_news_radio", ros::init_options::AnonymousName);
    ros::NodeHandle nh;
    ros::Publisher publisher = nh.advertise<std_msgs::String>("robot_news_radio", 10);
    ROS_INFO("robot_news_station node has been created");

    ros::Rate rate(2);

    while (ros::ok()) {
        std_msgs::String msg;
        msg.data = "Hello there";
        publisher.publish(msg);
        rate.sleep();
    }

    return 0;
}