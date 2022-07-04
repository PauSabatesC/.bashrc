############

alias vim=nvim
alias pip3="python3 -m pip3"
alias pip="python3 -m pip"
alias ll='ls -la'

function aws-profile() {
    AWS_PROFILE=$(sed -nE 's/^\[(.*)\]/\1/p' ~/.aws/credentials | percol)
    export AWS_PROFILE
}
