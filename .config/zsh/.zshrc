# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$ZDOTDIR/ohmyzsh"

# ========================= Theme ========================= #
ZSH_THEME="kenn"

# ========================= Plugins ========================= #
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    web-search
)

eval "$(/opt/homebrew/bin/brew shellenv)"

source $ZSH/oh-my-zsh.sh

# ========================= Export ========================= #

export PATH="$HOME/.local/bin:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:/opt/homebrew/bin"


# ========================= Alias ========================= #

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
