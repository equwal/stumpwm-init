(in-package #:stumpwm-init)

(define-key *top-map* (kbd "M-`") "show-menu")

(set-prefix-key (kbd "C-t"))
(define-key *root-map* (kbd "c") "xterm")
(define-key *root-map* (kbd "C-c") "xterm")
(define-key *root-map* (kbd "E") "emacs")
(define-key *root-map* (kbd "d") "poison")
(define-key *root-map* (kbd "B") "browse")
(define-key *root-map* (kbd "C-y") "show-clipboard-history")

(defvar *movement*
  '(("C-j" . "Down")
    ("C-k" . "Up")
    ("C-b" . "S-SPC")
    ("C-f" . "SPC"))
  "Basic movement bindings.")
(defvar *search*
  '(("C-s" . "C-f")
    ("C-n" . "F3")
    ("C-n" . "S-F3"))
  "Emacs-like searching.")
(defvar *firefox*
  ;; navigation
  (append
   *movement*
   *search*
   '(("M-<" . "Home")                    ; to top/botom
     ("M->" . "End")
     ("C-y" . "C-v")                     ;paste
     ("C-g" . "ESC")
     ("M-x" . "C-j")                     ; search bar focus
     ;; find search
     ;; other useful ones:
     ;; C-pgup/c-pgdown cycle tabs
     ;; C-w kill tab
     ("C-w" . "C-w")))
  "Keybindings for firefox.")
(define-remapped-keys
    `(("Firefox" ,@*firefox*)))
(define-remapped-keys
    ;; A branding-free name for firefox
    `(("Nightly" ,@*firefox*)))

(define-remapped-keys
    `(("Tor" ,@*firefox*)))

(define-remapped-keys
    `(("okular"
       ,@(append *movement*
                 *search*
                 '(("C-j" . "Down")
                   ("C-k" . "Up")
                   ("C-b" . "S-SPC")
                   ("C-f" . "SPC")
                   ("C-s" . "C-f")
                   ("M-w" . "C-c")
                   ("C-y" . "C-v")
                   ("M->" . ("C" "End"))
                   ("M-<" . ("C" "Home")))))))
