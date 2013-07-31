alias reload!='. ~/.zshrc'

alias svnst="svn st --ignore-externals | grep -v '^X'"
alias svnlog="svn log --stop-on-copy"
alias svnupdate="svn update --ignore-externals"
alias svnswitch="svn switch --ignore-externals"
alias svnacceptworking="svn resolve --accept working"
alias svngeturl="svn info | grep URL | awk '{print "'$'"2}'"
alias svngetpath='svngeturl | cut -d/ -f5,6'
alias curlakamai='curl -I -X GET -H '\''Pragma: akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-check-cacheable, akamai-x-get-cache-key, akamai-x-get-extracted-values, akamai-x-get-nonces ,akamai-x-get-ssl-client-session-id, akamai-x-get-true-cache-key, akamai-x-serial-no'\'''
alias curlmobile='curl -H "Accept: application/json" -H "X-IPC-MOBILE-API: 1"'
alias s2cc='sudo su apache -c '\''rm -vrf app/cache/* app/logs/*'\'' && sudo su apache rm -vrf app/cache/* app/logs/* && chmod 777 app/cache app/logs'
