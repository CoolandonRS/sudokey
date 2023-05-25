# sudokey
Utilities for allowing and managing sudo with ssh agent authentication

### Server Installation
To install, run `curl -s https://raw.githubusercontent.com/CoolandonRS/sudokey/main/install | bash`

### Client Installation
1. (Windows Only) Enable the Open SSH Authentication Agent service (ssh-agent.exe)
2. (Optional) Run `ssh-add` (Will have to be redone on reboot, you no longer have to type in your ssh key passphrase)
3. Edit .ssh/config to include `ForwardAgent true` when connecting to your server, or use `ssh -A` whenever connecting.

#### Example Client SSH Config
```
Host server
  Hostname 192.168.1.4
  User user
  ForwardAgent true
```
