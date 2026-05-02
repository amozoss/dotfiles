# Ubuntu: `TERM_GUI_COLORS` over SSH (Termux → server)

Quick reference so **tmux status colours** (`.tmux.conf`) and **Vim `:termguicolors`** (`.vimrc`) see `TERM_GUI_COLORS=1` after you SSH in from Termux.

## 1. Ubuntu server — allow the variable (`AcceptEnv`)

OpenSSH ignores client-sent variables unless they are explicitly allowed.

**Preferred:** add a snippet under `/etc/ssh/sshd_config.d/` (matches modern Ubuntu/OpenSSH layouts that use `Include`):

```bash
sudo tee /etc/ssh/sshd_config.d/50-term-gui-colors.conf >/dev/null <<'EOF'
AcceptEnv TERM_GUI_COLORS
EOF
sudo chmod 644 /etc/ssh/sshd_config.d/50-term-gui-colors.conf
```

**Alternative:** append to `/etc/ssh/sshd_config` (only if your install does **not** use `Include`; avoid duplicating directives):

```
AcceptEnv TERM_GUI_COLORS
```

Several `AcceptEnv` lines can coexist (e.g. existing `LANG` / `LC_*` snippets).

Validate and reload:

```bash
sudo sshd -t && sudo sshd -T | grep -i acceptenv
sudo systemctl reload ssh
```

If `ssh` unit is unavailable, try `sudo systemctl reload sshd` on distros that use that name.

You should see `acceptenv term_gui_colors` in the `sshd -T` output once it is loaded.

## 2. Termux (SSH client) — send the variable (`SendEnv`)

In Termux shell startup (e.g. `~/.bashrc`):

```bash
export TERM_GUI_COLORS=1
```

In **`~/.ssh/config`** on the Termux device (host block or global):

```
Host YOUR_UBUNTU_HOST
  SendEnv TERM_GUI_COLORS
```

(To apply to every host — only if you are comfortable with that: `Host *` plus `SendEnv TERM_GUI_COLORS`.)

## 3. Check end-to-end

After a **new** SSH session:

```bash
echo "$TERM_GUI_COLORS"   # expect: 1
```

Then start or attach **tmux** so it picks up `update-environment` (see `.tmux.conf`). **Vim** should enable true colour only when `$TERM_GUI_COLORS` is `1` (`.vimrc`).

## 4. Older tmux server with stale env

From the SSH shell:

```bash
tmux set-environment -g TERM_GUI_COLORS 1
tmux source-file ~/.tmux.conf
```

(Path may be `~/dotfiles/.tmux.conf` depending on symlinks.)

## Related dotfiles

- `.tmux.conf` — `update-environment` and status styling when `TERM_GUI_COLORS=1`
- `.vimrc` — `termguicolors` gated on `$TERM_GUI_COLORS`
- `.zshrc` — short reminders for SendEnv / AcceptEnv
