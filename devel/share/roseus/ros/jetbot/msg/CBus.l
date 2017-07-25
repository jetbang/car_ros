;; Auto-generated. Do not edit!


(when (boundp 'jetbot::CBus)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'CBus (find-package "JETBOT")))
(unless (find-package "JETBOT::CBUS")
  (make-package "JETBOT::CBUS"))

(in-package "ROS")
;;//! \htmlinclude CBus.msg.html


(defclass jetbot::CBus
  :super ros::object
  :slots (_frame_id _fs _cp _cv _gp _gv ))

(defmethod jetbot::CBus
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:fs __fs) 0)
    ((:cp __cp) (instance jetbot::ChassisState :init))
    ((:cv __cv) (instance jetbot::ChassisState :init))
    ((:gp __gp) (instance jetbot::PantiltState :init))
    ((:gv __gv) (instance jetbot::PantiltState :init))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _fs (round __fs))
   (setq _cp __cp)
   (setq _cv __cv)
   (setq _gp __gp)
   (setq _gv __gv)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:fs
   (&optional __fs)
   (if __fs (setq _fs __fs)) _fs)
  (:cp
   (&rest __cp)
   (if (keywordp (car __cp))
       (send* _cp __cp)
     (progn
       (if __cp (setq _cp (car __cp)))
       _cp)))
  (:cv
   (&rest __cv)
   (if (keywordp (car __cv))
       (send* _cv __cv)
     (progn
       (if __cv (setq _cv (car __cv)))
       _cv)))
  (:gp
   (&rest __gp)
   (if (keywordp (car __gp))
       (send* _gp __gp)
     (progn
       (if __gp (setq _gp (car __gp)))
       _gp)))
  (:gv
   (&rest __gv)
   (if (keywordp (car __gv))
       (send* _gv __gv)
     (progn
       (if __gv (setq _gv (car __gv)))
       _gv)))
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint32 _fs
    4
    ;; jetbot/ChassisState _cp
    (send _cp :serialization-length)
    ;; jetbot/ChassisState _cv
    (send _cv :serialization-length)
    ;; jetbot/PantiltState _gp
    (send _gp :serialization-length)
    ;; jetbot/PantiltState _gv
    (send _gv :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint32 _fs
       (write-long _fs s)
     ;; jetbot/ChassisState _cp
       (send _cp :serialize s)
     ;; jetbot/ChassisState _cv
       (send _cv :serialize s)
     ;; jetbot/PantiltState _gp
       (send _gp :serialize s)
     ;; jetbot/PantiltState _gv
       (send _gv :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fs
     (setq _fs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; jetbot/ChassisState _cp
     (send _cp :deserialize buf ptr-) (incf ptr- (send _cp :serialization-length))
   ;; jetbot/ChassisState _cv
     (send _cv :deserialize buf ptr-) (incf ptr- (send _cv :serialization-length))
   ;; jetbot/PantiltState _gp
     (send _gp :deserialize buf ptr-) (incf ptr- (send _gp :serialization-length))
   ;; jetbot/PantiltState _gv
     (send _gv :deserialize buf ptr-) (incf ptr- (send _gv :serialization-length))
   ;;
   self)
  )

(setf (get jetbot::CBus :md5sum-) "b9efec3ad9b0e585f766ffbfebbe2a46")
(setf (get jetbot::CBus :datatype-) "jetbot/CBus")
(setf (get jetbot::CBus :definition-)
      "uint32 frame_id
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



(provide :jetbot/CBus "b9efec3ad9b0e585f766ffbfebbe2a46")


