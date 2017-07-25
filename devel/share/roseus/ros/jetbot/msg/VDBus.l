;; Auto-generated. Do not edit!


(when (boundp 'jetbot::VDBus)
  (if (not (find-package "JETBOT"))
    (make-package "JETBOT"))
  (shadow 'VDBus (find-package "JETBOT")))
(unless (find-package "JETBOT::VDBUS")
  (make-package "JETBOT::VDBUS"))

(in-package "ROS")
;;//! \htmlinclude VDBus.msg.html


(defclass jetbot::VDBus
  :super ros::object
  :slots (_frame_id _data ))

(defmethod jetbot::VDBus
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _data __data)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get jetbot::VDBus :md5sum-) "6f14d77e44ec6f5eac4bc41cb3f06732")
(setf (get jetbot::VDBus :datatype-) "jetbot/VDBus")
(setf (get jetbot::VDBus :definition-)
      "uint32 frame_id
uint8[] data
")



(provide :jetbot/VDBus "6f14d77e44ec6f5eac4bc41cb3f06732")


