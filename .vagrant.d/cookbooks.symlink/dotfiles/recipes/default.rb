%w{zsh curl git ack}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "oh-my-zsh" do
  command "curl --location #{node[:oh_my_zsh][:install_script]} | sh"
  creates "#{node[:home]}/.oh-my-zsh"
  user node[:user]
  group node[:group]
end

git node[:dotfiles][:dir] do
  repository node[:dotfiles][:repo]
  action :sync
  user node[:user]
  group node[:group]
end

execute "dotfiles" do
  ENV['git_authorname'] = node[:github][:name]
  ENV['git_authoremail'] = node[:github][:email]
  ENV['overwrite_all'] = "true"
  ENV['HOME'] = node[:home]

  command "#{node[:dotfiles][:dir]}/script/bootstrap"
  user node[:user]
  group node[:group]
end
