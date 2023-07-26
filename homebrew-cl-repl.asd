(asdf:defsystem "homebrew-cl-repl"
  :description "A thin wrapper to package https://github.com/fstamour/cl-repl for OSX using Homebrew."
  :version "0.6.4"
  :defsystem-depends-on ("deploy")
  :serial t
  :depends-on ("quicklisp" ;; file https://github.com/fstamour/cl-repl/blob/master/src/completer.lisp depends on quicklisp :(
               "cl-repl"
               ;; This style of dependencies is not supported in cl-brewer yet :(
               ;; (:version "cl-repl"
               ;;           "0.6.4")
               )
  :build-operation "deploy-op"
  :build-pathname "cl-repl"
  :entry-point "cl-repl:main"
  :homepage "https://github.com/svetlyak40wt/homebrew-cl-repl")
