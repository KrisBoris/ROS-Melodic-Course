#!/usr/bin/env python

import rospy
from rospy_tutorials.srv import AddTwoInts


def main(args=None):
    rospy.init_node("add_two_ints_client")
    rospy.loginfo("add_two_ints_client has been created")

    rospy.wait_for_service("add_two_ints")

    try:
        add_two_ints = rospy.ServiceProxy("add_two_ints", AddTwoInts)
        response = add_two_ints(9, 7)
        rospy.loginfo("Result is: " + str(response.sum))
    except rospy.ServiceException as e:
        rospy.logwarn("Service warning: " + str(e))


if __name__ == "__main__":
    main()