; Auto-generated. Do not edit!


(cl:in-package open_manipulator_with_tb3_msgs-srv)


;//! \htmlinclude Place-request.msg.html

(cl:defclass <Place-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass Place-request (<Place-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Place-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Place-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_with_tb3_msgs-srv:<Place-request> is deprecated: use open_manipulator_with_tb3_msgs-srv:Place-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Place-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_with_tb3_msgs-srv:state-val is deprecated.  Use open_manipulator_with_tb3_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Place-request>) ostream)
  "Serializes a message object of type '<Place-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Place-request>) istream)
  "Deserializes a message object of type '<Place-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Place-request>)))
  "Returns string type for a service object of type '<Place-request>"
  "open_manipulator_with_tb3_msgs/PlaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place-request)))
  "Returns string type for a service object of type 'Place-request"
  "open_manipulator_with_tb3_msgs/PlaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Place-request>)))
  "Returns md5sum for a message object of type '<Place-request>"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Place-request)))
  "Returns md5sum for a message object of type 'Place-request"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Place-request>)))
  "Returns full string definition for message of type '<Place-request>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Place-request)))
  "Returns full string definition for message of type 'Place-request"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Place-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Place-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Place-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude Place-response.msg.html

(cl:defclass <Place-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass Place-response (<Place-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Place-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Place-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_with_tb3_msgs-srv:<Place-response> is deprecated: use open_manipulator_with_tb3_msgs-srv:Place-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Place-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_with_tb3_msgs-srv:result-val is deprecated.  Use open_manipulator_with_tb3_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Place-response>) ostream)
  "Serializes a message object of type '<Place-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Place-response>) istream)
  "Deserializes a message object of type '<Place-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Place-response>)))
  "Returns string type for a service object of type '<Place-response>"
  "open_manipulator_with_tb3_msgs/PlaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place-response)))
  "Returns string type for a service object of type 'Place-response"
  "open_manipulator_with_tb3_msgs/PlaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Place-response>)))
  "Returns md5sum for a message object of type '<Place-response>"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Place-response)))
  "Returns md5sum for a message object of type 'Place-response"
  "1c3e9cad628ebe29faeb3b4f60a0626c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Place-response>)))
  "Returns full string definition for message of type '<Place-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Place-response)))
  "Returns full string definition for message of type 'Place-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Place-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Place-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Place-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Place)))
  'Place-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Place)))
  'Place-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Place)))
  "Returns string type for a service object of type '<Place>"
  "open_manipulator_with_tb3_msgs/Place")