sudo add-apt-repository universe

sudo apt install gnome-tweaks

sudo apt-get install zsh

# installing the packages I need for zsh
export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# installing the plugins for zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

# installing flathub
sudo apt install flatpak

sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

