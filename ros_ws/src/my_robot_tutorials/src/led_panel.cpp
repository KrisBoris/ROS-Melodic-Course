#include <ros/ros.h>
#include <my_robot_msgs/SetLedPanel.h>

bool ledPanel[] = {false, false, false};

bool handleServiceSetLed(my_robot_msgs::SetLedPanel::Request &req, my_robot_msgs::SetLedPanel::Response &res)
{
    if(req.led_number > 3 || req.led_number < 1) {
        ROS_INFO("Invalid led number");
        res.success = false;
    }
    else {
        ledPanel[req.led_number - 1] = req.led_state;
        res.success = true;
        ROS_INFO("Led panel: %d, %d, %d", ledPanel[0], ledPanel[1], ledPanel[2]);
    }

    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "led_panel");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("set_led", handleServiceSetLed);     

    ROS_INFO("led_panel service has been created");

    ros::spin();

    return 0;
}