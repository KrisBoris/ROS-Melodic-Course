; Auto-generated. Do not edit!


(cl:in-package my_robot_msgs-srv)


;//! \htmlinclude SetLedPanel-request.msg.html

(cl:defclass <SetLedPanel-request> (roslisp-msg-protocol:ros-message)
  ((led_number
    :reader led_number
    :initarg :led_number
    :type cl:integer
    :initform 0)
   (led_state
    :reader led_state
    :initarg :led_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLedPanel-request (<SetLedPanel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedPanel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedPanel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<SetLedPanel-request> is deprecated: use my_robot_msgs-srv:SetLedPanel-request instead.")))

(cl:ensure-generic-function 'led_number-val :lambda-list '(m))
(cl:defmethod led_number-val ((m <SetLedPanel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:led_number-val is deprecated.  Use my_robot_msgs-srv:led_number instead.")
  (led_number m))

(cl:ensure-generic-function 'led_state-val :lambda-list '(m))
(cl:defmethod led_state-val ((m <SetLedPanel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:led_state-val is deprecated.  Use my_robot_msgs-srv:led_state instead.")
  (led_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedPanel-request>) ostream)
  "Serializes a message object of type '<SetLedPanel-request>"
  (cl:let* ((signed (cl:slot-value msg 'led_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'led_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedPanel-request>) istream)
  "Deserializes a message object of type '<SetLedPanel-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'led_number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'led_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedPanel-request>)))
  "Returns string type for a service object of type '<SetLedPanel-request>"
  "my_robot_msgs/SetLedPanelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedPanel-request)))
  "Returns string type for a service object of type 'SetLedPanel-request"
  "my_robot_msgs/SetLedPanelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedPanel-request>)))
  "Returns md5sum for a message object of type '<SetLedPanel-request>"
  "ca637c0799ee071ea5139620f452c21c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedPanel-request)))
  "Returns md5sum for a message object of type 'SetLedPanel-request"
  "ca637c0799ee071ea5139620f452c21c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedPanel-request>)))
  "Returns full string definition for message of type '<SetLedPanel-request>"
  (cl:format cl:nil "int64 led_number~%bool led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedPanel-request)))
  "Returns full string definition for message of type 'SetLedPanel-request"
  (cl:format cl:nil "int64 led_number~%bool led_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedPanel-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedPanel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedPanel-request
    (cl:cons ':led_number (led_number msg))
    (cl:cons ':led_state (led_state msg))
))
;//! \htmlinclude SetLedPanel-response.msg.html

(cl:defclass <SetLedPanel-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLedPanel-response (<SetLedPanel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedPanel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedPanel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_robot_msgs-srv:<SetLedPanel-response> is deprecated: use my_robot_msgs-srv:SetLedPanel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLedPanel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_robot_msgs-srv:success-val is deprecated.  Use my_robot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedPanel-response>) ostream)
  "Serializes a message object of type '<SetLedPanel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedPanel-response>) istream)
  "Deserializes a message object of type '<SetLedPanel-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedPanel-response>)))
  "Returns string type for a service object of type '<SetLedPanel-response>"
  "my_robot_msgs/SetLedPanelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedPanel-response)))
  "Returns string type for a service object of type 'SetLedPanel-response"
  "my_robot_msgs/SetLedPanelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedPanel-response>)))
  "Returns md5sum for a message object of type '<SetLedPanel-response>"
  "ca637c0799ee071ea5139620f452c21c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedPanel-response)))
  "Returns md5sum for a message object of type 'SetLedPanel-response"
  "ca637c0799ee071ea5139620f452c21c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedPanel-response>)))
  "Returns full string definition for message of type '<SetLedPanel-response>"
  (cl:format cl:nil "bool success ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedPanel-response)))
  "Returns full string definition for message of type 'SetLedPanel-response"
  (cl:format cl:nil "bool success ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedPanel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedPanel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedPanel-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLedPanel)))
  'SetLedPanel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLedPanel)))
  'SetLedPanel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedPanel)))
  "Returns string type for a service object of type '<SetLedPanel>"
  "my_robot_msgs/SetLedPanel")