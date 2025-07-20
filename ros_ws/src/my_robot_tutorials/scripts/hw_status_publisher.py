#!/usr/bin/env python

import rospy
from my_robot_msgs.msg import HardwareStatus


def main(args=None):
    rospy.init_node("hw_status_publisher")
    pub = rospy.Publisher("hw_status", HardwareStatus, queue_size=10)
    rate = rospy.Rate(1.0)

    rospy.loginfo("hw_status publisher node has been created")

    while not rospy.is_shutdown():
        msg = HardwareStatus()
        msg.temperature = 36
        msg.are_motors_up = True
        msg.debug_message = "O nie, rosol!"
        pub.publish(msg)
        rate.sleep()


if __name__ == "__main__":
    main()