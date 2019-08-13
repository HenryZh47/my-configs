# my-zshrc
My configuration of zshrc. Clone this when configuring a new computer.

## Setup Procedure
1. Install zsh
    ```
    sudo apt-get update && sudo apt-get install zsh
    ```
1. Install powerline-font
   ```
   sudo apt-get install fonts-powerline
   ```
1. Install `oh-my-zsh`
   ```
   sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```
1. Custom packages
    * zsh-autosuggestions
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
1. Copy the content of `my-zshrc` to `~/.zshrc`
