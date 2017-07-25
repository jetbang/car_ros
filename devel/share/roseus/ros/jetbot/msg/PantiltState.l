;; Auto-generated. Do not edit!


(when (boundp 'jetbot::PantiltState)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'PantiltState (find-package "JETBOT")))
(unless (find-package "JETBOT::PANTILTSTATE")
  (make-package "JETBOT::PANTILTSTATE"))

(in-package "ROS")
;;//! \htmlinclude PantiltState.msg.html


(defclass jetbot::PantiltState
  :super ros::object
  :slots (_p _t ))

(defmethod jetbot::PantiltState
  (:init
   (&key
    ((:p __p) 0)
    ((:t __t) 0)
    )
   (send-super :init)
   (setq _p (round __p))
   (setq _t (round __t))
   self)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; int16 _p
    2
    ;; int16 _t
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _p
       (write-word _p s)
     ;; int16 _t
       (write-word _t s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _p
     (setq _p (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _t
     (setq _t (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get jetbot::PantiltState :md5sum-) "0b08ea430ac45fde2716ea064d94e7a4")
(setf (get jetbot::PantiltState :datatype-) "jetbot/PantiltState")
(setf (get jetbot::PantiltState :definition-)
      "int16 p
int16 t
")



(provide :jetbot/PantiltState "0b08ea430ac45fde2716ea064d94e7a4")


