(defpackage #:stumpwm-init
  (:use #:cl)
  (:import-from :alexandria :once-only)
  (:import-from :clipboard-history :start-clipboard-manager)
  (:import-from
   :stumpwm
   :banish
   :current-screen
   :current-head
   :defcommand
   :define-key
   :define-remapped-keys
   :kbd
   :*mode-line-background-color*
   :*mode-line-border-color*
   :*mode-line-foreground-color*
   :*mode-line-foreground-color*
   :*mode-line-timeout*
   :*root-map*
   :run-shell-command
   :*screen-mode-line-format*
   :set-prefix-key
   :toggle-mode-line
   :*top-map*
   :*window-format*)
  (:export
   :*my-mouse* ;Set for the `poison' command to toggle it.
   :poison
   :*xterm-font-pt*
   :*xterm-font*
   :xterm
   :deftermcom
   :pushnew-apps))
