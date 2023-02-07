#!/usr/bin/env bash

echo "Removendo arquivos ~/."
cd ~
rm -rf .DS_Store .bash_history .cache .local .config/iterm2 .lesshst .npm .viminfo .zsh_history .zsh_sessions .zcompdump*
echo "Arquivos removidos."
exit
