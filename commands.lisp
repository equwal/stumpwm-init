(in-package #:stumpwm-init)
(defcommand xterm (&optional additional-argstr) ()
  (run-shell-command "xterm"))

(defvar *toggle* nil)
(defvar *my-mouse* "ETPS/2 Elantech Touchpad")
(defcommand poison () ()
  "Turn the rat all the way OFF (or back on): .
(useful if the touchpad is sensitive while typing)."
    (banish)
    (run-shell-command
     (concatenate 'string
                  "xinput --"
                  (if *toggle*
                      "disable"
                      "enable")
                  " '" *my-mouse* "'"))
  (setf *toggle* (not *toggle*)))
