#!/bin/bash
readonly confVer=1
readonly sudokeyFilename="sudo_keys"
readonly authkeyFilename="authorized_keys"
readonly sudoFile="/etc/pam.d/sudo"
readonly sshFile="/etc/ssh/sshd_config"
readonly scriptLoc="/usr/local/sbin/sudokey"
readonly keyLine="auth \+sufficient \+pam_ssh_agent_auth.so \+file=~/.ssh/sudo_keys"
readonly passLine="auth \+include \+system-auth"
readonly passLine2="password \+include \+system-auth"
readonly repoLoc="https://raw.githubusercontent.com/CoolandonRS/sudokey/main"