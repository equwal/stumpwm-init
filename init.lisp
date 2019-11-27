(in-package #:stumpwm-init)

;; Yikes. Handle them instead?
(ignore-errors
 (create-server :port 4004
                :style slynk:*communication-style*
                :dont-close t))
