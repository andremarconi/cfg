#!/usr/bin/env bash

echo "Atualizando o brew."
brew update
brew upgrade
echo "Limpando o cache do brew."
brew cleanup
brew cleanup --prune=all

echo "Removendo arquivos ~/."
cd ~
rm -rf .cache .local .config/iterm2 .viminfo .zsh_history .zcompdump-André’s\ Mac\ mini-5.8
echo "Arquivos removidos."
exit
