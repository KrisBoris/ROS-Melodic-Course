#!/usr/bin/env python

import rospy
from std_msgs.msg import Int64
from std_srvs.srv import SetBool


counter = 0
publisher = None


def main(args=None):
    rospy.init_node("number_counter")

    global publisher
    publisher = rospy.Publisher("number_count", Int64, queue_size=10)
    subscriber = rospy.Subscriber("number", Int64, callback_subscription, queue_size=10)
    service = rospy.Service("reset_number_count", SetBool, handle_reset_counter)    

    rospy.loginfo("number_count node has been created")

    rospy.spin()


def callback_subscription(msg):
    global counter
    global publisher

    counter += msg.data    
    
    new_msg = Int64()
    new_msg.data = counter
    publisher.publish(new_msg)


def handle_reset_counter(req):
    
    global counter
    response = SetBool._response_class()
    
    if req.data:
        counter = 0
        response.message = "Counter has been reset"
    else:
        response.message = "Counter has not been reset"

    response.success = True
    rospy.loginfo(str(response.message))

    return response


if __name__ == "__main__":
    main()