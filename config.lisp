(in-package #:stumpwm-init)

(defun pushnew-apps (&rest apps)
  "Keep apps sorted as they are pushed into the app-menu."
  (dolist (app apps)
    (pushnew app
             app-menu::*app-menu*
             :test #'string=
             :key #'car))
  (setf app-menu::*app-menu*
        (sort app-menu::*app-menu* #'string< :key #'car)))

(setq app-menu::*app-menu*
      '(("emacs" "emacs")
        ("web" browse:browse)))

(setf *mode-line-timeout* 1)
(setf *mode-line-foreground-color* "#98BDFB")
(setf *mode-line-border-color* "#028090")
(setf *mode-line-background-color* "#191919")
(setf *mode-line-foreground-color* "#98BDFB")

(setf battery-portable:*prefer-sysfs* t)
(setf *screen-mode-line-format*
      (list "[^B%n^b] %W^>" "%B | %d"))
(setf *window-format* "%m%n%s%c")

;; Since this is bound to a key by default in this configuration, it is nice to
;; warn the user before closing everything. *prompt-on-quit* only exists on the
;; latest git version as of 2019-12-07, so we need to make sure it exists first.
(when (apropos :*prompt-on-quit* (find-package :stumpwm) t)
  ;; FIXME: Should not need to use eval! Or execute the setf around 2021 without
  ;; the condition above.
  (eval (read-from-string "(setf stumpwm:*prompt-on-quit* t)")))
