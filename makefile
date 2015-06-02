.PHONY: all clean

DOTFILES = .vimrc .tmux.conf .gitconfig

all: $(addprefix $(HOME)/, $(DOTFILES))

$(addprefix $(HOME)/, $(DOTFILES)): $(HOME)/%: $(CURDIR)/%
	ln -s $< $@

clean:
	for file in $(DOTFILES); do rm $(HOME)/$$file; done
