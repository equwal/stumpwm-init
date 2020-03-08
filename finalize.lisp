(in-package #:stumpwm-init)

(run-shell-command "xsetroot -cursor_name left_ptr -solid black -name root-window")

;; start the polling timer process
(start-clipboard-manager)

(toggle-mode-line (current-screen) (current-head))
