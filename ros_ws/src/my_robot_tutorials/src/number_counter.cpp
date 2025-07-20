#include <ros/ros.h>
#include <std_msgs/Int64.h>
#include <std_srvs/SetBool.h>

int counter = 0;
ros::Publisher publisher;

void callback_subscription(const std_msgs::Int64& msg)
{
    counter += msg.data;
    std_msgs::Int64 new_msg;
    new_msg.data = counter;
    publisher.publish(new_msg);
}

bool handleResetCounter(std_srvs::SetBool::Request &req, std_srvs::SetBool::Response &res)
{
    if(req.data) {
        counter = 0;
        res.message = "Counter has been reset";
    }
    else {
        res.message = "Counter has not been reset";
    }

    res.success = true;
    ROS_INFO("%s", res.message.c_str());

    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "number_counter");
    ros::NodeHandle nh;

    publisher = nh.advertise<std_msgs::Int64>("number_count", 10);
    ros::Subscriber subscriber = nh.subscribe("number", 10, callback_subscription);  
    ros::ServiceServer service = nh.advertiseService("reset_number_count", handleResetCounter);  

    ROS_INFO("number_counter node has been created");

    ros::spin();

    return 0;
} 