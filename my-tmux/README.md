# my tmux config
My tmux configuration. Clone this when configuring a new computer.

## Manual setup Procedure

1. Install tmux plugin manager
    ```
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```
1. Copy the tmux-config to `$HOME/.tmux.conf`
1. Install plugins with `Prefix + I`; Update with `Prefix + U`; Uninstall with 
`Prefix + alt + U`

## MacOS Clipboard

1. Install a plugin

```sh
brew install reattach-to-user-namespace
```
