sudo add-apt-repository universe

# gnome-tweaks for managing gnome customizations
if [ $(command -v gnome-tweaks)]
then
    echo "gnome-tweaks has already been installed"
else
    sudo apt install gnome-tweaks
fi

# install zsh
if [-v $(command -v zsh)]
then
    echo "zsh has already been installed"
else
    sudo apt-get install zsh
fi

# install btop for status visualizations
if [-v $(command -v btop)]
then
    echo "btop has already been installed"
else
    sudo apt-get install btop
fi

# installing the packages I need for zsh
export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# installing the plugins for zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

# installing flathub
if [-v $(command -v flatpak)]
then
    echo "flatpak has already been installed"
else
    sudo apt install flatpak
    sudo apt install gnome-software-plugin-flatpak
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi