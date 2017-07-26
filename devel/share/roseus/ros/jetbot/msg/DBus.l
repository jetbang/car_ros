;; Auto-generated. Do not edit!


(when (boundp 'jetbot::DBus)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'DBus (find-package "JETBOT")))
(unless (find-package "JETBOT::DBUS")
  (make-package "JETBOT::DBUS"))

(in-package "ROS")
;;//! \htmlinclude DBus.msg.html


(defclass jetbot::DBus
  :super ros::object
  :slots (_rcp _hcp ))

(defmethod jetbot::DBus
  (:init
   (&key
    ((:rcp __rcp) (instance jetbot::Rcp :init))
    ((:hcp __hcp) (instance jetbot::Hcp :init))
    )
   (send-super :init)
   (setq _rcp __rcp)
   (setq _hcp __hcp)
   self)
  (:rcp
   (&rest __rcp)
   (if (keywordp (car __rcp))
       (send* _rcp __rcp)
     (progn
       (if __rcp (setq _rcp (car __rcp)))
       _rcp)))
  (:hcp
   (&rest __hcp)
   (if (keywordp (car __hcp))
       (send* _hcp __hcp)
     (progn
       (if __hcp (setq _hcp (car __hcp)))
       _hcp)))
  (:serialization-length
   ()
   (+
    ;; jetbot/Rcp _rcp
    (send _rcp :serialization-length)
    ;; jetbot/Hcp _hcp
    (send _hcp :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetbot/Rcp _rcp
       (send _rcp :serialize s)
     ;; jetbot/Hcp _hcp
       (send _hcp :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetbot/Rcp _rcp
     (send _rcp :deserialize buf ptr-) (incf ptr- (send _rcp :serialization-length))
   ;; jetbot/Hcp _hcp
     (send _hcp :deserialize buf ptr-) (incf ptr- (send _hcp :serialization-length))
   ;;
   self)
  )

(setf (get jetbot::DBus :md5sum-) "8afdad0d004f8088d4c832bf9a170a35")
(setf (get jetbot::DBus :datatype-) "jetbot/DBus")
(setf (get jetbot::DBus :definition-)
      "Rcp rcp
Hcp hcp
================================================================================
MSG: jetbot/Rcp
uint16 ch1
uint16 ch2
uint16 ch3
uint16 ch4
uint8 sw1
uint8 sw2
================================================================================
MSG: jetbot/Hcp
int16 mouse_speed_x
int16 mouse_speed_y
int16 mouse_speed_z
uint8 mouse_button_left
uint8 mouse_button_right
uint16 key
uint16 res
")



(provide :jetbot/DBus "8afdad0d004f8088d4c832bf9a170a35")


