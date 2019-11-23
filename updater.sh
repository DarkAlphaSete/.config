echo "Starting.";

/usr/bin/tmux new-session -s "Updater script" "

echo '>> Updating installed packages (pacman -Syu).';
sudo sh --background -c '/usr/bin/pacman -Syu --noconfirm';

/usr/bin/tmux detach;
echo '>> Detached.';

sh $ZSH/tools/upgrade.sh; 
";
