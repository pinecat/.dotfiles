# add ~/bin to the $PATH
export PATH=$HOME/bin:$PATH;

# load shell dotfiles
for file in $HOME/.{path,bash_prompt,exports,aliases,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
