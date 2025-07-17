#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def main(args=None):
    rospy.init_node("robot_news_station")

    pub = rospy.Publisher("robot_news_radio", String, queue_size=10)

    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        msg = String()
        msg.data = "Hello there"
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo("Node has been killed")


if __name__ == "__main__":
    main()