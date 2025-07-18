#include <ros/ros.h>
#include <std_msgs/Int64.h>

int counter = 0;
ros::Publisher publisher;

void callback_subscription(const std_msgs::Int64& msg)
{
    counter += msg.data;
    std_msgs::Int64 new_msg;
    new_msg.data = counter;
    publisher.publish(new_msg);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "number_counter");
    ros::NodeHandle nh;

    publisher = nh.advertise<std_msgs::Int64>("number_count", 10);
    ros::Subscriber subscriber = nh.subscribe("number", 10, callback_subscription);    

    ROS_INFO("number_counter node has been created");

    ros::spin();

    return 0;
}