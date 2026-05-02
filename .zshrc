# Shared POSIX aliases (git, tmux, …) — keep POSIX-only definitions there.
_dotfiles="${${(%):-%x}:A:h}"
[[ -r "$_dotfiles/.shell_aliases" ]] && source "$_dotfiles/.shell_aliases"
unset _dotfiles

# True colour for Vim (:termguicolors) and tmux status theme when SSHing from Termux:
#   In Termux: export TERM_GUI_COLORS=1  (e.g. ~/.bashrc)
#   In Termux ~/.ssh/config: Host * (or matching Host) → SendEnv TERM_GUI_COLORS
# On the SSH server /etc/ssh/sshd_config: AcceptEnv TERM_GUI_COLORS
# If an old tmux server has stale global env: tmux set-environment -g TERM_GUI_COLORS 1 && tmux source-file ~/.tmux.conf
