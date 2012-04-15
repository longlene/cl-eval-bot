(defsystem :eval-bot
  :depends-on (:bordeaux-threads :trivial-irc :alexandria
                                 :split-sequence)
  :components
  ((:file "sandbox-impl")
   (:file "sandbox-cl" :depends-on ("sandbox-impl"))
   (:file "clhs-url")
   (:file "general")
   (:file "eval-bot" :depends-on ("general" "sandbox-impl" "clhs-url"))
   (:file "filesystem" :depends-on ("general"))))
