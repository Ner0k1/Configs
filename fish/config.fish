





eval $(/opt/homebrew/bin/brew shellenv)
eval $(opam env --switch=default)
eval $(fzf --zsh)

export LDFLAGS=-L/opt/homebrew/opt/llvm/lib
export CPPFLAGS=-I/opt/homebrew/opt/llvm/include

set -gx EDITOR hx
set -gx CDPATH . ~ ~/Documents ~/.config

fish_add_path -g -p $HOME/.cargo/bin
fish_add_path -g -p $HOME/.local/share/mise/shims
# fish_add_path -g -a $HOME/.nimble/bin/
fish_add_path -g -p $(brew --prefix)/opt/llvm/bin
fish_add_path -g -a /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path -g -a $HOME/.config/emacs/bin

set nimble_path $HOME/.nimble/pkgs2

for nim_pkg in (ls $nimble_path)
    fish_add_path -g -a $nimble_path/$nim_pkg
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end
