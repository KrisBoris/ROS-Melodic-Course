#!/usr/bin/env python

import rospy


def main(args=None):
    rospy.init_node("my_first_python_node")
    rospy.loginfo("Hello there, this node has been started")

    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        rospy.loginfo("Standing here...")
        rate.sleep()


if __name__ == "__main__":
    main()    