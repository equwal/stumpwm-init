(in-package #:stumpwm-init)
(defmacro deftermcom (name
                      &optional argstr (termcom 'xterm))
  "Call a terminal with arguments."
  (once-only (argstr)
    `(defcommand ,name () ()
       (if ,argstr
           (,termcom ,argstr)
           (,termcom)))))
