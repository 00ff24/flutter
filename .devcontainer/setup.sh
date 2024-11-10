#!/bin/bash

# Instalar dependencias básicas
sudo apt-get update && sudo apt-get install -y \
  git unzip curl xz-utils libglu1-mesa

# Descargar e instalar Flutter
git clone https://github.com/flutter/flutter.git -b stable ~/flutter
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
source ~/.bashrc

# Verificar la instalación de Flutter
flutter doctor
