;; Auto-generated. Do not edit!


(when (boundp 'jetbot::Hcp)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'Hcp (find-package "JETBOT")))
(unless (find-package "JETBOT::HCP")
  (make-package "JETBOT::HCP"))

(in-package "ROS")
;;//! \htmlinclude Hcp.msg.html


(defclass jetbot::Hcp
  :super ros::object
  :slots (_mouse_speed_x _mouse_speed_y _mouse_speed_z _mouse_button_left _mouse_button_right _key _res ))

(defmethod jetbot::Hcp
  (:init
   (&key
    ((:mouse_speed_x __mouse_speed_x) 0)
    ((:mouse_speed_y __mouse_speed_y) 0)
    ((:mouse_speed_z __mouse_speed_z) 0)
    ((:mouse_button_left __mouse_button_left) 0)
    ((:mouse_button_right __mouse_button_right) 0)
    ((:key __key) 0)
    ((:res __res) 0)
    )
   (send-super :init)
   (setq _mouse_speed_x (round __mouse_speed_x))
   (setq _mouse_speed_y (round __mouse_speed_y))
   (setq _mouse_speed_z (round __mouse_speed_z))
   (setq _mouse_button_left (round __mouse_button_left))
   (setq _mouse_button_right (round __mouse_button_right))
   (setq _key (round __key))
   (setq _res (round __res))
   self)
  (:mouse_speed_x
   (&optional __mouse_speed_x)
   (if __mouse_speed_x (setq _mouse_speed_x __mouse_speed_x)) _mouse_speed_x)
  (:mouse_speed_y
   (&optional __mouse_speed_y)
   (if __mouse_speed_y (setq _mouse_speed_y __mouse_speed_y)) _mouse_speed_y)
  (:mouse_speed_z
   (&optional __mouse_speed_z)
   (if __mouse_speed_z (setq _mouse_speed_z __mouse_speed_z)) _mouse_speed_z)
  (:mouse_button_left
   (&optional __mouse_button_left)
   (if __mouse_button_left (setq _mouse_button_left __mouse_button_left)) _mouse_button_left)
  (:mouse_button_right
   (&optional __mouse_button_right)
   (if __mouse_button_right (setq _mouse_button_right __mouse_button_right)) _mouse_button_right)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; int16 _mouse_speed_x
    2
    ;; int16 _mouse_speed_y
    2
    ;; int16 _mouse_speed_z
    2
    ;; uint8 _mouse_button_left
    1
    ;; uint8 _mouse_button_right
    1
    ;; uint16 _key
    2
    ;; uint16 _res
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _mouse_speed_x
       (write-word _mouse_speed_x s)
     ;; int16 _mouse_speed_y
       (write-word _mouse_speed_y s)
     ;; int16 _mouse_speed_z
       (write-word _mouse_speed_z s)
     ;; uint8 _mouse_button_left
       (write-byte _mouse_button_left s)
     ;; uint8 _mouse_button_right
       (write-byte _mouse_button_right s)
     ;; uint16 _key
       (write-word _key s)
     ;; uint16 _res
       (write-word _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _mouse_speed_x
     (setq _mouse_speed_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_speed_y
     (setq _mouse_speed_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_speed_z
     (setq _mouse_speed_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _mouse_button_left
     (setq _mouse_button_left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mouse_button_right
     (setq _mouse_button_right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _key
     (setq _key (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _res
     (setq _res (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get jetbot::Hcp :md5sum-) "b43018bb32e264090ccdd50096e77265")
(setf (get jetbot::Hcp :datatype-) "jetbot/Hcp")
(setf (get jetbot::Hcp :definition-)
      "int16 mouse_speed_x
int16 mouse_speed_y
int16 mouse_speed_z
uint8 mouse_button_left
uint8 mouse_button_right
uint16 key
uint16 res
")



(provide :jetbot/Hcp "b43018bb32e264090ccdd50096e77265")


