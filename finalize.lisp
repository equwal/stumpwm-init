(in-package #:stumpwm-init)

(run-shell-command "xsetroot -cursor_name left_ptr -solid black -name root-window")

;; start the polling timer process
(start-clipboard-manager)

(run-shell-command "feh --bg-fill ~/Pictures/calif-soviet.png")
(run-shell-command "xgamma -gamma .8")
(toggle-mode-line (current-screen)
                  (current-head))
