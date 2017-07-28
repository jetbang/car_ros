;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Imu)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Imu (find-package "JETBOT")))
(unless (find-package "JETBOT::IMU")
  (make-package "JETBOT::IMU"))

(in-package "ROS")
;;//! \htmlinclude Imu.msg.html


(defclass jetbot::Imu
  :super ros::object
  :slots (_frame_id _ax _ay _az _gx _gy _gz ))

(defmethod jetbot::Imu
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:ax __ax) 0)
    ((:ay __ay) 0)
    ((:az __az) 0)
    ((:gx __gx) 0)
    ((:gy __gy) 0)
    ((:gz __gz) 0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _ax (round __ax))
   (setq _ay (round __ay))
   (setq _az (round __az))
   (setq _gx (round __gx))
   (setq _gy (round __gy))
   (setq _gz (round __gz))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:gz
   (&optional __gz)
   (if __gz (setq _gz __gz)) _gz)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; int16 _ax
    2
    ;; int16 _ay
    2
    ;; int16 _az
    2
    ;; int16 _gx
    2
    ;; int16 _gy
    2
    ;; int16 _gz
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; int16 _ax
       (write-word _ax s)
     ;; int16 _ay
       (write-word _ay s)
     ;; int16 _az
       (write-word _az s)
     ;; int16 _gx
       (write-word _gx s)
     ;; int16 _gy
       (write-word _gy s)
     ;; int16 _gz
       (write-word _gz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _ax
     (setq _ax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ay
     (setq _ay (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _az
     (setq _az (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gx
     (setq _gx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gy
     (setq _gy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gz
     (setq _gz (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get jetbot::Imu :md5sum-) "8cfe32375741210f7374d76754e2eef7")
(setf (get jetbot::Imu :datatype-) "jetbot/Imu")
(setf (get jetbot::Imu :definition-)
      "uint32 frame_id
int16 ax
int16 ay
int16 az
int16 gx
int16 gy
int16 gz

")



(provide :jetbot/Imu "8cfe32375741210f7374d76754e2eef7")


