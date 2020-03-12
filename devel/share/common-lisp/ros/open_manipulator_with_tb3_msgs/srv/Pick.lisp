; Auto-generated. Do not edit!


(cl:in-package open_manipulator_with_tb3_msgs-srv)


;//! \htmlinclude Pick-request.msg.html

(cl:defclass <Pick-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass Pick-request (<Pick-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pick-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pick-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_with_tb3_msgs-srv:<Pick-request> is deprecated: use open_manipulator_with_tb3_msgs-srv:Pick-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Pick-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_with_tb3_msgs-srv:state-val is deprecated.  Use open_manipulator_with_tb3_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pick-request>) ostream)
  "Serializes a message object of type '<Pick-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pick-request>) istream)
  "Deserializes a message object of type '<Pick-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pick-request>)))
  "Returns string type for a service object of type '<Pick-request>"
  "open_manipulator_with_tb3_msgs/PickRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick-request)))
  "Returns string type for a service object of type 'Pick-request"
  "open_manipulator_with_tb3_msgs/PickRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pick-request>)))
  "Returns md5sum for a message object of type '<Pick-request>"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pick-request)))
  "Returns md5sum for a message object of type 'Pick-request"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pick-request>)))
  "Returns full string definition for message of type '<Pick-request>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pick-request)))
  "Returns full string definition for message of type 'Pick-request"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pick-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pick-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Pick-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Pick-response.msg.html

(cl:defclass <Pick-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass Pick-response (<Pick-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pick-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pick-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_with_tb3_msgs-srv:<Pick-response> is deprecated: use open_manipulator_with_tb3_msgs-srv:Pick-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Pick-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_with_tb3_msgs-srv:result-val is deprecated.  Use open_manipulator_with_tb3_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pick-response>) ostream)
  "Serializes a message object of type '<Pick-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pick-response>) istream)
  "Deserializes a message object of type '<Pick-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pick-response>)))
  "Returns string type for a service object of type '<Pick-response>"
  "open_manipulator_with_tb3_msgs/PickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick-response)))
  "Returns string type for a service object of type 'Pick-response"
  "open_manipulator_with_tb3_msgs/PickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pick-response>)))
  "Returns md5sum for a message object of type '<Pick-response>"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pick-response)))
  "Returns md5sum for a message object of type 'Pick-response"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pick-response>)))
  "Returns full string definition for message of type '<Pick-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pick-response)))
  "Returns full string definition for message of type 'Pick-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pick-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pick-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Pick-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Pick)))
  'Pick-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Pick)))
  'Pick-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pick)))
  "Returns string type for a service object of type '<Pick>"
  "open_manipulator_with_tb3_msgs/Pick")