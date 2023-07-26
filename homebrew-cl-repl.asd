(defun asdf/driver::other-system-version (system-name)
  (break)
  (asdf:component-version (asdf:find-system system-name)))

(export 'asdf/driver::other-system-version
        (find-package "ASDF/DRIVER"))


(asdf:defsystem "homebrew-cl-repl"
  :version "0.6.4"
  ;; (:other-system-name "cl-repl")
  :defsystem-depends-on ("deploy")
  :serial t
  :depends-on ("quicklisp"              ;; file https://github.com/fstamour/cl-repl/blob/master/src/completer.lisp depends on quicklisp :(
               "cl-repl")
  :build-operation "deploy-op"
  :build-pathname "cl-repl"
  :entry-point "cl-repl:main"
  :homepage "https://github.com/svetlyak40wt/homebrew-cl-repl")
