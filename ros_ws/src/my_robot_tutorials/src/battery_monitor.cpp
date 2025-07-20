#include <ros/ros.h>
#include <my_robot_msgs/SetLedPanel.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "battery_monitor");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<my_robot_msgs::SetLedPanel>("set_led");
    ros::Rate rate(1.0 / 7.0);
    bool batteryState = false;

    ROS_INFO("battery_monitor has been created");

    while(ros::ok()) {
        my_robot_msgs::SetLedPanel srv;
        srv.request.led_number = 3;
        srv.request.led_state = batteryState;

        if(client.call(srv)) {
            ROS_INFO("Led state change successfully: %d", (int)srv.response.success);
        }
        else {
            ROS_WARN("Service call failed");
        }
        batteryState = !batteryState;
        rate.sleep();
    }

    return 0;
}