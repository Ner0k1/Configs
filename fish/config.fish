





eval $(/opt/homebrew/bin/brew shellenv)
eval $(opam env --switch=default)
eval $(fzf --zsh)

export LDFLAGS=-L/opt/homebrew/opt/llvm/lib
export CPPFLAGS=-I/opt/homebrew/opt/llvm/include

set -gx EDITOR hx
set -gx CDPATH . ~ ~/Documents ~/.config

fish_add_path -g -p $HOME/.cargo/bin
fish_add_path -g -p $HOME/.local/share/mhse/shims
fish_add_path -g -a $HOME/.nimble/pkgs2/nimlangserver-1.2.0-95de85fae4485dcd850ada31e200d15671a00c4a/
fish_add_path -p -g $(brew --prefix)/opt/llvm/bin
fish_add_path -g -a /opt/homebrew/opt/grep/libexec/gnubin
fish_add_path -g -a $HOME/.config/emacs/bin
if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end
