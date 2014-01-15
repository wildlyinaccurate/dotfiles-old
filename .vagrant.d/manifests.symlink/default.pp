exec { 'install-oh-my-zsh':
    command => 'curl -L https://raw.github.com/wildlyinaccurate/oh-my-zsh/master/tools/install.sh | sh',
    cwd => '~',
}

exec { 'clone-dotfiles':
    command => 'git clone https://github.com/wildlyinaccurate/dotfiles.git .dotfiles',
    cwd => '~',
    require => Exec['install-oh-my-zsh'],
}

exec { 'install-dotfiles':
    command => './bootstrap',
    cwd => '~/.dotfiles/script',
    require => Exec['clone-dotfiles'],
}
