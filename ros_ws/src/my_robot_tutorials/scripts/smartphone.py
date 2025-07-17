#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def main(args=None):
    rospy.init_node("smartphone")

    subscriber = rospy.Subscriber("robot_news_radio", String, callback_subscription, queue_size=10)    

    rospy.loginfo("smartphone node has been created")    

    rospy.spin()


def callback_subscription(msg):
    rospy.loginfo(msg.data)    


if __name__ == "__main__":
    main()