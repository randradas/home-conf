.DEFAULT_GOAL := all
.PHONY: all vim terminator bash git gpg

all: vim terminator bash git gpg

vim:
	./vim/setup.sh

terminator:
	./config/setup.sh

bash:
	./bash/setup.sh

git:
	./git/setup.sh

gpg:
	./gpg/setup.sh
