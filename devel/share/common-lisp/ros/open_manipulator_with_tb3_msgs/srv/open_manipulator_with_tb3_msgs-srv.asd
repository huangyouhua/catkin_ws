
(cl:in-package :asdf)

(defsystem "open_manipulator_with_tb3_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pick" :depends-on ("_package_Pick"))
    (:file "_package_Pick" :depends-on ("_package"))
    (:file "Place" :depends-on ("_package_Place"))
    (:file "_package_Place" :depends-on ("_package"))
  ))