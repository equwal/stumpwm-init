(in-package #:stumpwm-init)

(define-key *top-map* (kbd "M-`") "show-menu")

(set-prefix-key (kbd "C-i"))
(define-key *root-map* (kbd "c") "xterm")
(define-key *root-map* (kbd "C-c") "xterm")
(define-key *root-map* (kbd "E") "emacs")
(define-key *root-map* (kbd "d") "poison")
(define-key *root-map* (kbd "B") "browse")
(define-key *root-map* (kbd "C-y") "show-clipboard-history")

(define-remapped-keys
    '(("(Firefox|Tor)"
       ;; navigation
       ("C-j" . "Down") ; by line
       ("C-k" . "Up")
       ("C-b" . "S-SPC") ; by page
       ("C-f" . "SPC")
       ("M-<" . "Home") ; to top/botom
       ("M->" . "End")
       ("C-y" . "C-v") ;paste
       ("C-g" . "ESC")
       ("M-x" . "C-j") ; search bar focus
       ;; find search
       ("C-s" . "C-f") ; search in page
       ("C-n" . "C-g") ; next match
       ("C-p" . "C-G") ; prev match
       ;; other useful ones:
       ;; C-pgup/c-pgdown cycle tabs
       ;; C-w kill tab
       ("C-w" . "C-w"))))
(define-remapped-keys
    '(("Okular"
       ("C-j" . "Down")
       ("C-k" . "Up")
       ("C-b" . "S-SPC")
       ("C-f" . "SPC")
       ("C-s" . "C-f")
       ("M-w" . "C-c")
       ("C-y" . "C-v")
       ("M->" . "C-End")
       ("M-<" . "C-Home"))))
