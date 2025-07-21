#!/usr/bin/env python

import rospy
from my_robot_msgs.srv import SetLedPanel


led_panel = [False, False, False]


def main(args=None):
    rospy.init_node("led_panel")

    service = rospy.Service("set_led", SetLedPanel, handle_set_led_panel)    

    rospy.loginfo("led_panel node has been created")

    rospy.spin()


def handle_set_led_panel(req):
    
    if req.led_number > 3 or req.led_number < 1:
        rospy.loginfo("Incorrect led number")
        return False
    else:
        global led_panel
        led_panel[req.led_number - 1] = req.led_state
        rospy.loginfo("Led panel: " + str(led_panel[0]) + ", " + str(led_panel[1]) + ", " + str(led_panel[2]))
        return True


if __name__ == "__main__":
    main()