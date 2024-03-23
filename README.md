# Process

## Zsh and Powerlevel10k

### Zsh Installation

Add zsh as you would with any other application and change your default shell.
```
sudo apt install zsh
chsh -s $(which zsh)
```

At this point, logout and re-open your terminal to zsh
It will prompt you to configure zsh
Choose option 0, since we'll be setting things up with [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

### Oh My Zsh Configuration

Follow the [installation instructions](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)
For me this was 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

To add some basic highlighting and suggestions, use

```
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

And edit your `~/.zshrc` file to include

```
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
```

Now reload your zsh configuration with `source ~/.zshrc` in order to load the plug-ins

### Powerlevel10k Installation

Clone the repo into your zsh custom themes directory (`~/.oh-my-zsh/custom/themes/`) using

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

and add it to the zsh configuration (`~/.zshrc) with

```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

### Powerlevel10k Configuration

At this point, you may need to make sure you have a nerdfont properly installed on your linux machine in order to get the same look and feel

Reload zsh again with `source ~/.zshrc` and follow the prompts to create your configuration.

Feel free to choose for your own preference, but for my configuration, I made the following choices:

*lean* prompt style

*unicode* character set

*256* prompt colors

*24-hour* time format

*two-lines* prompt height

*dotted* prompt connection

*left* prompt frame

*lightests* frame color

*compact* frame spacing

*many* icons

*concise* prompt flow

*transient* prompt

You can read up on setting instant prompt w/ Powerlevel10k, but feel free to keep it as verbose for now.
You should also let the prompt add your choices to ~/.zshrc, unless you want to manage that manually 

## Tmux

Install tmux with

```
sudo apt install tmux
```

and create a session with `tmux new`. You'll have lost all your colors and configuration, so let's bring that back.

Without exiting your tmux session, install tpm to handle tmux plug-ins with `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Create a `~/.tmux.conf` file and populate it with

```
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

I use the [catppucin theme](https://github.com/catppuccin/tmux?tab=readme-ov-file) alongside several custom settings found in `example.tmux.conf`

Reload your tmux config with `tmux source ~/.tmux.conf` and install the plug-ins with `<prefix> + I` (The default prefix for tmux is `ctrl + b`).

Finally, close the tmux session with `exit` and start a new session similar to before.

## Windows Terminal

For windows, I use [Windows Terminal](https://github.com/Microsoft/Terminal) as my terminal.
I also have [used the catppuccin theme](https://github.com/catppuccin/windows-terminal) there as well.
That particular site doesn't distinguish between light and dark variants, so I've included lighter colors based off of the [mocha palette](https://catppuccin.ryanccn.dev/palette)

# Sources

This guide was heavily based off and inspired by a similar tutorial on how to set-up the [dracula theme](https://dev.to/andrenbrandao/terminal-setup-with-zsh-tmux-dracula-theme-48lm) across zsh and tmux.
