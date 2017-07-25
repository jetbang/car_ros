;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Uwb)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Uwb (find-package "JETBOT")))
(unless (find-package "JETBOT::UWB")
  (make-package "JETBOT::UWB"))

(in-package "ROS")
;;//! \htmlinclude Uwb.msg.html


(defclass jetbot::Uwb
  :super ros::object
  :slots (_frame_id _flag _x _y _z _w ))

(defmethod jetbot::Uwb
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:flag __flag) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:w __w) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _flag (round __flag))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _w (round __w))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint8 _flag
    1
    ;; uint32 _x
    4
    ;; uint32 _y
    4
    ;; uint32 _z
    4
    ;; uint32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint8 _flag
       (write-byte _flag s)
     ;; uint32 _x
       (write-long _x s)
     ;; uint32 _y
       (write-long _y s)
     ;; uint32 _z
       (write-long _z s)
     ;; uint32 _w
       (write-long _w s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _w
     (setq _w (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetbot::Uwb :md5sum-) "d081c1ded50e40b797a8b93692c3f0f6")
(setf (get jetbot::Uwb :datatype-) "jetbot/Uwb")
(setf (get jetbot::Uwb :definition-)
      "uint32 frame_id
uint8 flag
uint32 x
uint32 y
uint32 z
uint32 w

")



(provide :jetbot/Uwb "d081c1ded50e40b797a8b93692c3f0f6")


