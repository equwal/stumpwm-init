(in-package #:stumpwm-init)

(setq app-menu::*app-menu*
      '(("emacs" "emacs")
        ("gimp" "gimp")
        ("office" "openoffice")
        ("pass"
         ("copy" pass:pass-copy-menu)
         ("generate" pass:pass-generate))
        ("PDF" "okular")
        ("sound" "pavucontrol")
        ("web" browse:browse)
        ("wifi" nmtui)))

(setf *mode-line-timeout* 1)
(setf *mode-line-foreground-color* "#98BDFB")
(setf *mode-line-border-color* "#028090")
(setf *mode-line-background-color* "#191919")
(setf *mode-line-foreground-color* "#98BDFB")
(setf *screen-mode-line-format*
      (list "[^B%n^b] %W^>" "%B | %d"))
(setf *window-format* "%m%n%s%c")
