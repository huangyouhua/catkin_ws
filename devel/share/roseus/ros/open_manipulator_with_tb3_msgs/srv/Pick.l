;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_with_tb3_msgs::Pick)
  (if (not (find-package "OPEN_MANIPULATOR_WITH_TB3_MSGS"))
    (make-package "OPEN_MANIPULATOR_WITH_TB3_MSGS"))
  (shadow 'Pick (find-package "OPEN_MANIPULATOR_WITH_TB3_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICK")
  (make-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICK"))
(unless (find-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICKREQUEST")
  (make-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICKREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICKRESPONSE")
  (make-package "OPEN_MANIPULATOR_WITH_TB3_MSGS::PICKRESPONSE"))

(in-package "ROS")





(defclass open_manipulator_with_tb3_msgs::PickRequest
  :super ros::object
  :slots (_state ))

(defmethod open_manipulator_with_tb3_msgs::PickRequest
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass open_manipulator_with_tb3_msgs::PickResponse
  :super ros::object
  :slots (_result ))

(defmethod open_manipulator_with_tb3_msgs::PickResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass open_manipulator_with_tb3_msgs::Pick
  :super ros::object
  :slots ())

(setf (get open_manipulator_with_tb3_msgs::Pick :md5sum-) "1c3e9cad628ebe29faeb3b4f60a0626c")
(setf (get open_manipulator_with_tb3_msgs::Pick :datatype-) "open_manipulator_with_tb3_msgs/Pick")
(setf (get open_manipulator_with_tb3_msgs::Pick :request) open_manipulator_with_tb3_msgs::PickRequest)
(setf (get open_manipulator_with_tb3_msgs::Pick :response) open_manipulator_with_tb3_msgs::PickResponse)

(defmethod open_manipulator_with_tb3_msgs::PickRequest
  (:response () (instance open_manipulator_with_tb3_msgs::PickResponse :init)))

(setf (get open_manipulator_with_tb3_msgs::PickRequest :md5sum-) "1c3e9cad628ebe29faeb3b4f60a0626c")
(setf (get open_manipulator_with_tb3_msgs::PickRequest :datatype-) "open_manipulator_with_tb3_msgs/PickRequest")
(setf (get open_manipulator_with_tb3_msgs::PickRequest :definition-)
      "string state
---
string result

")

(setf (get open_manipulator_with_tb3_msgs::PickResponse :md5sum-) "1c3e9cad628ebe29faeb3b4f60a0626c")
(setf (get open_manipulator_with_tb3_msgs::PickResponse :datatype-) "open_manipulator_with_tb3_msgs/PickResponse")
(setf (get open_manipulator_with_tb3_msgs::PickResponse :definition-)
      "string state
---
string result

")



(provide :open_manipulator_with_tb3_msgs/Pick "1c3e9cad628ebe29faeb3b4f60a0626c")


