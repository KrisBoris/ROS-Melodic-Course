;; Auto-generated. Do not edit!


(when (boundp 'my_robot_msgs::SetLedPanel)
  (if (not (find-package "MY_ROBOT_MSGS"))
    (make-package "MY_ROBOT_MSGS"))
  (shadow 'SetLedPanel (find-package "MY_ROBOT_MSGS")))
(unless (find-package "MY_ROBOT_MSGS::SETLEDPANEL")
  (make-package "MY_ROBOT_MSGS::SETLEDPANEL"))
(unless (find-package "MY_ROBOT_MSGS::SETLEDPANELREQUEST")
  (make-package "MY_ROBOT_MSGS::SETLEDPANELREQUEST"))
(unless (find-package "MY_ROBOT_MSGS::SETLEDPANELRESPONSE")
  (make-package "MY_ROBOT_MSGS::SETLEDPANELRESPONSE"))

(in-package "ROS")





(defclass my_robot_msgs::SetLedPanelRequest
  :super ros::object
  :slots (_led_number _led_state ))

(defmethod my_robot_msgs::SetLedPanelRequest
  (:init
   (&key
    ((:led_number __led_number) 0)
    ((:led_state __led_state) nil)
    )
   (send-super :init)
   (setq _led_number (round __led_number))
   (setq _led_state __led_state)
   self)
  (:led_number
   (&optional __led_number)
   (if __led_number (setq _led_number __led_number)) _led_number)
  (:led_state
   (&optional __led_state)
   (if __led_state (setq _led_state __led_state)) _led_state)
  (:serialization-length
   ()
   (+
    ;; int64 _led_number
    8
    ;; bool _led_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _led_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _led_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _led_number) (= (length (_led_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_led_number . bv) 0) 0) s)
              (write-long (ash (elt (_led_number . bv) 1) -1) s))
             ((and (class _led_number) (= (length (_led_number . bv)) 1)) ;; big1
              (write-long (elt (_led_number . bv) 0) s)
              (write-long (if (>= _led_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _led_number s)(write-long (if (>= _led_number 0) 0 #xffffffff) s)))
     ;; bool _led_state
       (if _led_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _led_number
#+(or :alpha :irix6 :x86_64)
      (setf _led_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _led_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _led_state
     (setq _led_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_msgs::SetLedPanelResponse
  :super ros::object
  :slots (_success ))

(defmethod my_robot_msgs::SetLedPanelResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_robot_msgs::SetLedPanel
  :super ros::object
  :slots ())

(setf (get my_robot_msgs::SetLedPanel :md5sum-) "ca637c0799ee071ea5139620f452c21c")
(setf (get my_robot_msgs::SetLedPanel :datatype-) "my_robot_msgs/SetLedPanel")
(setf (get my_robot_msgs::SetLedPanel :request) my_robot_msgs::SetLedPanelRequest)
(setf (get my_robot_msgs::SetLedPanel :response) my_robot_msgs::SetLedPanelResponse)

(defmethod my_robot_msgs::SetLedPanelRequest
  (:response () (instance my_robot_msgs::SetLedPanelResponse :init)))

(setf (get my_robot_msgs::SetLedPanelRequest :md5sum-) "ca637c0799ee071ea5139620f452c21c")
(setf (get my_robot_msgs::SetLedPanelRequest :datatype-) "my_robot_msgs/SetLedPanelRequest")
(setf (get my_robot_msgs::SetLedPanelRequest :definition-)
      "int64 led_number
bool led_state
---
bool success 
")

(setf (get my_robot_msgs::SetLedPanelResponse :md5sum-) "ca637c0799ee071ea5139620f452c21c")
(setf (get my_robot_msgs::SetLedPanelResponse :datatype-) "my_robot_msgs/SetLedPanelResponse")
(setf (get my_robot_msgs::SetLedPanelResponse :definition-)
      "int64 led_number
bool led_state
---
bool success 
")



(provide :my_robot_msgs/SetLedPanel "ca637c0799ee071ea5139620f452c21c")


