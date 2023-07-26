all: cl-repl.rb

cl-repl.rb: homebrew-cl-repl.asd qlfile.lock
	qlot exec bash -c "SBCL_HOME='' cl-brewer --preload quicklisp-starter --formula-name cl-repl homebrew-cl-repl"

qlfile.lock: qlfile
	qlot update || qlot install

install:
	HOMEBREW_NO_AUTO_UPDATE=1 brew install --debug --verbose ./cl-repl.rb
