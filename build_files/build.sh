#!/bin/bash

set -ouex pipefail

echo "WorkerOS: Iniciando instalação do KDE Plasma..."

# Instalar grupo base do KDE
rpm-ostree install \
    @kde-desktop-environment \
    sddm \
    sddm-breeze \
    sddm-kcm \
    plasma-desktop \
    plasma-workspace \
    kde-settings-plasma \
    kde-settings-pulseaudio \
    xdg-desktop-portal-kde

echo "WorkerOS: KDE Plasma instalado com sucesso!"