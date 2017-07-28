;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Mag)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Mag (find-package "JETBOT")))
(unless (find-package "JETBOT::MAG")
  (make-package "JETBOT::MAG"))

(in-package "ROS")
;;//! \htmlinclude Mag.msg.html


(defclass jetbot::Mag
  :super ros::object
  :slots (_frame_id _mx _my _mz ))

(defmethod jetbot::Mag
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:mx __mx) 0)
    ((:my __my) 0)
    ((:mz __mz) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _mx (round __mx))
   (setq _my (round __my))
   (setq _mz (round __mz))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:mz
   (&optional __mz)
   (if __mz (setq _mz __mz)) _mz)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; int16 _mx
    2
    ;; int16 _my
    2
    ;; int16 _mz
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; int16 _mx
       (write-word _mx s)
     ;; int16 _my
       (write-word _my s)
     ;; int16 _mz
       (write-word _mz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _mx
     (setq _mx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _my
     (setq _my (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mz
     (setq _mz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get jetbot::Mag :md5sum-) "090022d6084392a110ec2c9910142e0e")
(setf (get jetbot::Mag :datatype-) "jetbot/Mag")
(setf (get jetbot::Mag :definition-)
      "uint32 frame_id
int16 mx
int16 my
int16 mz

")



(provide :jetbot/Mag "090022d6084392a110ec2c9910142e0e")


