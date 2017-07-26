;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Rcp)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Rcp (find-package "JETBOT")))
(unless (find-package "JETBOT::RCP")
  (make-package "JETBOT::RCP"))

(in-package "ROS")
;;//! \htmlinclude Rcp.msg.html


(defclass jetbot::Rcp
  :super ros::object
  :slots (_ch1 _ch2 _ch3 _ch4 _sw1 _sw2 ))

(defmethod jetbot::Rcp
  (:init
   (&key
    ((:ch1 __ch1) 0)
    ((:ch2 __ch2) 0)
    ((:ch3 __ch3) 0)
    ((:ch4 __ch4) 0)
    ((:sw1 __sw1) 0)
    ((:sw2 __sw2) 0)
    )
   (send-super :init)
   (setq _ch1 (round __ch1))
   (setq _ch2 (round __ch2))
   (setq _ch3 (round __ch3))
   (setq _ch4 (round __ch4))
   (setq _sw1 (round __sw1))
   (setq _sw2 (round __sw2))
   self)
  (:ch1
   (&optional __ch1)
   (if __ch1 (setq _ch1 __ch1)) _ch1)
  (:ch2
   (&optional __ch2)
   (if __ch2 (setq _ch2 __ch2)) _ch2)
  (:ch3
   (&optional __ch3)
   (if __ch3 (setq _ch3 __ch3)) _ch3)
  (:ch4
   (&optional __ch4)
   (if __ch4 (setq _ch4 __ch4)) _ch4)
  (:sw1
   (&optional __sw1)
   (if __sw1 (setq _sw1 __sw1)) _sw1)
  (:sw2
   (&optional __sw2)
   (if __sw2 (setq _sw2 __sw2)) _sw2)
  (:serialization-length
   ()
   (+
    ;; uint16 _ch1
    2
    ;; uint16 _ch2
    2
    ;; uint16 _ch3
    2
    ;; uint16 _ch4
    2
    ;; uint8 _sw1
    1
    ;; uint8 _sw2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _ch1
       (write-word _ch1 s)
     ;; uint16 _ch2
       (write-word _ch2 s)
     ;; uint16 _ch3
       (write-word _ch3 s)
     ;; uint16 _ch4
       (write-word _ch4 s)
     ;; uint8 _sw1
       (write-byte _sw1 s)
     ;; uint8 _sw2
       (write-byte _sw2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _ch1
     (setq _ch1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ch2
     (setq _ch2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ch3
     (setq _ch3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ch4
     (setq _ch4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sw1
     (setq _sw1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sw2
     (setq _sw2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jetbot::Rcp :md5sum-) "5bd0f9dd4a8a3cd6a641f38748d7c7e3")
(setf (get jetbot::Rcp :datatype-) "jetbot/Rcp")
(setf (get jetbot::Rcp :definition-)
      "uint16 ch1
uint16 ch2
uint16 ch3
uint16 ch4
uint8 sw1
uint8 sw2
")



(provide :jetbot/Rcp "5bd0f9dd4a8a3cd6a641f38748d7c7e3")


