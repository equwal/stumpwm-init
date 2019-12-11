(asdf:defsystem #:stumpwm-init
  :description "My custom stumpwm init."
  :author "Spenser Truex <web@spensertruex.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t ;; TODO: Not serial.

  ;; TODO: Weakly depends on (but not, since that is deprecated)?
  :depends-on (;; quicklisp
               :alexandria
               :cffi
               :stumpwm
               :usocket-server
	             ;; :slynk
               :percent-encoding

               ;; stumpwm-contrib
               :shell-command-history
               :command-history
               :battery-portable
               :browse
               :pinentry
               :pass
               :clipboard-history
               :app-menu)
  :components ((:file "package")
               (:file "init")
               (:file "util")
               (:file "config")
               (:file "commands")
               (:file "keybindings")
               (:file "finalize")))
