#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64


def main(args=None):
    rospy.init_node("number_publisher")

    number = 4
    publisher = rospy.Publisher("number", Int64, queue_size=10)
    rate = rospy.Rate(1.0 / 2.0)

    rospy.loginfo("number_publisher node has been created")

    while not rospy.is_shutdown():
        msg = Int64()
        msg.data = number
        publisher.publish(msg)
        rate.sleep()


if __name__ == "__main__":
    main()