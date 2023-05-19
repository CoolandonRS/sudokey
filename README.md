# sudokey
Utilities for allowing and managing sudo with ssh agent authentication

### Server Installation
To install, git clone and cd into `sudokey.d`, and run the `install` script. It will do the rest for you!

### Client Installation
1. (Windows Only) Enable the Open SSH Authentication Agent service (ssh-agent.exe), then follow linux instructions.
2. Run `ssh-add`
3. Edit .ssh/config to include `ForwardAgent true` when connecting to your server, or use `ssh -A` whenever connecting.

#### Example Client SSH Config
```
Host server
  Hostname 192.168.1.4
  User user
  ForwardAgent true
```
