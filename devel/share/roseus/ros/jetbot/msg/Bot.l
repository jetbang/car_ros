;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Bot)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Bot (find-package "JETBOT")))
(unless (find-package "JETBOT::BOT")
  (make-package "JETBOT::BOT"))

(in-package "ROS")
;;//! \htmlinclude Bot.msg.html


(defclass jetbot::Bot
  :super ros::object
  :slots (_frame_id _cbus ))

(defmethod jetbot::Bot
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:cbus __cbus) (instance jetbot::CBus :init))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _cbus __cbus)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:cbus
   (&rest __cbus)
   (if (keywordp (car __cbus))
       (send* _cbus __cbus)
     (progn
       (if __cbus (setq _cbus (car __cbus)))
       _cbus)))
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; jetbot/CBus _cbus
    (send _cbus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; jetbot/CBus _cbus
       (send _cbus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; jetbot/CBus _cbus
     (send _cbus :deserialize buf ptr-) (incf ptr- (send _cbus :serialization-length))
   ;;
   self)
  )

(setf (get jetbot::Bot :md5sum-) "676ff8c0e5861dafed1482bc0ebcac80")
(setf (get jetbot::Bot :datatype-) "jetbot/Bot")
(setf (get jetbot::Bot :definition-)
      "uint32 frame_id
CBus cbus
================================================================================
MSG: jetbot/CBus
uint32 frame_id
uint32 fs
ChassisState cp
ChassisState cv
PantiltState gp
PantiltState gv
================================================================================
MSG: jetbot/ChassisState
int32 x
int32 y
int32 z
================================================================================
MSG: jetbot/PantiltState
int16 p
int16 t
")



(provide :jetbot/Bot "676ff8c0e5861dafed1482bc0ebcac80")


