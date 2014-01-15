default[:user] = "vagrant"
default[:group] = "vagrant"
default[:home] = "/home/vagrant"

default[:oh_my_zsh] = {
  :install_script => "https://raw.github.com/wildlyinaccurate/oh-my-zsh/master/tools/install.sh",
}

default[:dotfiles] = {
  :dir => "#{default[:home]}/.dotfiles",
  :repo => "https://github.com/wildlyinaccurate/dotfiles.git",
}

default[:github] = {
  :name => "",
  :email => ""
}
