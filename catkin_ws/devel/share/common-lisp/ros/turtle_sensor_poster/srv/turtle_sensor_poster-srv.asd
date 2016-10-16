
(cl:in-package :asdf)

(defsystem "turtle_sensor_poster-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtlePosition" :depends-on ("_package_TurtlePosition"))
    (:file "_package_TurtlePosition" :depends-on ("_package"))
  ))