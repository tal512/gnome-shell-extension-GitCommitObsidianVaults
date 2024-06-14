echo "1. Create extension directory if it does not exist: ~/.local/share/gnome-shell/extensions/GitCommitObsidianVaults"
mkdir -p ~/.local/share/gnome-shell/extensions/GitCommitObsidianVaults

echo "2. Copy extension files to extension directory: ~/.local/share/gnome-shell/extensions/GitCommitObsidianVaults"
cp ./* ~/.local/share/gnome-shell/extensions/GitCommitObsidianVaults

echo "3. Restart GNOME Shell"
killall -w -SIGQUIT gnome-shell

echo "4. Enable extension GitCommitObsidianVaults"
gnome-extensions enable GitCommitObsidianVaults

echo "DONE"
