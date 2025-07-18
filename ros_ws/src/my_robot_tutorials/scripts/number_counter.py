#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64


counter = 0


def main(args=None):
    rospy.init_node("number_counter")

    publisher = rospy.Publisher("number_count", Int64, queue_size=10)
    subscriber = rospy.Subscriber("number", Int64, callback_subscription, queue_size=10)
    rate = rospy.Rate(1.0 / 2.0)

    rospy.loginfo("number_count node has been created")

    while not rospy.is_shutdown():
        msg = Int64()
        msg.data = counter
        publisher.publish(msg)
        rate.sleep()


def callback_subscription(msg):
    global counter
    counter += msg.data    


if __name__ == "__main__":
    main()