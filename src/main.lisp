(ql:quickload :lispcord)

(defpackage :discord-bot
  (:use :cl :lispcord))
(in-package :discord-bot)

(defbot *bot* (sb-unix::posix-getenv "CL_DISBOT_TOKEN"))
(connect *bot*)

(print (sb-unix::posix-getenv "CL_DISBOT_TOKEN"))

(add-event-handler :on-message-create
                   (lambda (msg)
                     (when (equal (lc:content msg) "$link")
                       (reply msg "https://www.quicklisp.org/"))))
