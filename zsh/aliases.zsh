alias reload!='. ~/.zshrc'

alias pretty_json="ruby -ryaml -rjson -e 'puts JSON.pretty_generate(JSON.parse(STDIN.read))'"

alias dss='dig +search +short'

alias tags='git tag | sort -bt. -k1,1 -k2,2n -k3,3n -k4,4n -k5,5n'

alias vu='vagrant up'
alias vs='vagrant suspend'
alias vr='vagrant reload'
alias vp='vagrant provision'
alias vrp='vagrant reload --provision'
alias vssh='vagrant ssh'

alias fsl='find ~/Code/morph-modules/*/node_modules -type l -maxdepth 1'

alias morph-npm="npm --cache ~/.morph-npm --registry https://npm.morph.int.tools.bbc.co.uk --cert=\"$(cat /etc/pki/certificate.pem)\" --key=\"$(cat /etc/pki/certificate.pem)\" --cafile=/etc/pki/ca-bundle.crt"
alias mpm='morph-npm'
alias mm='~/Code/morph-modules'
alias mb='grunt build'
alias gt='grunt test'
alias md='morph develop'
