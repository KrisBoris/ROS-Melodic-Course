#!/usr/bin/env python

import rospy
from my_robot_msgs.srv import SetLedPanel


def main(args=None):
    rospy.init_node("battery_monitor")
    
    client = rospy.ServiceProxy("set_led", SetLedPanel)
    rate = rospy.Rate(1.0 / 7.0)
    battery_state = False

    rospy.loginfo("battery_monitor node has been created")

    while not rospy.is_shutdown():
        rospy.wait_for_service("set_led")

        try:            
            response = client(3, battery_state)

            if response.success:
                rospy.loginfo("Led changed successfully")
            else:
                rospy.loginfo("Failed to change led")

        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed")

        battery_state = not battery_state
        
        rate.sleep()


if __name__ == "__main__":
    main()