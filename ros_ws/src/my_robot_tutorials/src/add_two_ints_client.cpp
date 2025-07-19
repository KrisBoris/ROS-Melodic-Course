#include <ros/ros.h>
#include <rospy_tutorials/AddTwoInts.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "add_two_ints_client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<rospy_tutorials::AddTwoInts>("add_two_ints");
    
    ROS_INFO("add_two_ints_client has been created");

    rospy_tutorials::AddTwoInts srv;
    srv.request.a = 9;
    srv.request.b = 7;

    if(client.call(srv)) {
        ROS_INFO("%d + %d = %d", (int)srv.request.a, (int)srv.request.b, (int)srv.response.sum);
    }
    else {
        ROS_WARN("Service call failed");
    }

    return 0;
}