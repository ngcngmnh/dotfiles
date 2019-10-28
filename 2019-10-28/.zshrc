# Enable Powerlevel10k instant prompt. Should stay at the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin ice depth=1; zplugin light romkatv/powerlevel10k
zplugin light zsh-users/zsh-autosuggestions
PF_INFO="ascii title kernel uptime pkgs shell wm memory" PF_ASCII="darwin" /usr/bin/pfetch

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias upall="pamac upgrade --enable-downgrade"
alias up-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias aa0="sudo chmod a+rw /dev/ttyACM0"
alias aa1="sudo chmod a+rw /dev/ttyACM1"
alias cpulimit="sudo cpupower frequency-set --max 2500000"
alias cpumax="sudo cpupower frequency-set --max 3100000"
alias rankm="sudo pacman-mirrors -f"
alias ls="lsd"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Finalize Powerlevel10k instant prompt. Should stay at the bottom of ~/.zshrc.
(( ! ${+functions[p10k-instant-prompt-finalize]} )) || p10k-instant-prompt-finalize
