#!/usr/bin/env bash

echo "Atualizando o brew."
brew update
brew upgrade
echo "Limpando o cache do brew."
brew cleanup --prune=all
