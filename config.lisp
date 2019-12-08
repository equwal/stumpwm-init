(in-package #:stumpwm-init)

(defun pushnew-apps (&rest apps)
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
(setf *screen-mode-line-format*
      (list "[^B%n^b] %W^>" "%B | %d"))
(setf *window-format* "%m%n%s%c")
