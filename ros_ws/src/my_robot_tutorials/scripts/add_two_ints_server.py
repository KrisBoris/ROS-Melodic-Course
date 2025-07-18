#!/usr/bin/env python

import rospy
from rospy_tutorials.srv import AddTwoInts


def main(args=None):
    rospy.init_node("add_two_ints_server")
    rospy.loginfo("add_two_ints_server has been started")

    service = rospy.Service("add_two_ints", AddTwoInts, handle_add_two_ints)

    rospy.spin()


def handle_add_two_ints(req):
    result = req.a + req.b
    rospy.loginfo(str(req.a) + " + " + str(req.b) + " = " + str(result))
    return result


if __name__ == "__main__":
    main()