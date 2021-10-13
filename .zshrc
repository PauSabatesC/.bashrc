############

alias vim=nvim
alias pip3="python3 -m pip3"
alias pip="python3 -m pip"
alias ll='ls -la'

############

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{cyan} %n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > %f'

#############
export PATH=/Users/pau/Library/Python/3.8/bin/:$PATH 
export CLICOLOR=1



# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

#AWS SSO
function aws-profile() {
    AWS_PROFILE=$(sed -nE 's/^\[(.*)\]/\1/p' ~/.aws/credentials | percol)
    export AWS_PROFILE
}
