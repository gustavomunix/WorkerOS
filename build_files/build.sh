#!/bin/bash
set -ouex pipefail

echo "==================================="
echo "WorkerOS: Removendo apps desnecessários"
echo "==================================="

# Remover apps GNOME
echo "Removendo apps GNOME..."
rpm-ostree override remove \
    gnome-calculator \
    gnome-calendar \
    gnome-characters \
    gnome-clocks \
    gnome-contacts \
    gnome-maps \
    gnome-weather \
    simple-scan \
    snapshot \
    loupe || true

# Remover Sunshine (game streaming)
echo "Removendo Sunshine..."
rpm-ostree override remove \
    Sunshine || true

# Remover Fcitx5 (input method asiático)
echo "Removendo Fcitx5..."
rpm-ostree override remove \
    fcitx5 \
    fcitx5-chinese-addons \
    fcitx5-chinese-addons-data \
    fcitx5-configtool \
    fcitx5-data \
    fcitx5-gtk3 \
    fcitx5-gtk4 \
    fcitx5-gtk \
    fcitx5-hangul \
    fcitx5-libs \
    fcitx5-libthai \
    fcitx5-lua \
    fcitx5-mozc \
    fcitx5-qt \
    fcitx5-qt5 \
    fcitx5-qt6 \
    fcitx5-qt-libfcitx5qt6widgets \
    fcitx5-qt-libfcitx5qtdbus \
    fcitx5-qt-qt6gui \
    fcitx5-sayura \
    fcitx5-unikey || true

# Remover Kwrite (editor simples)
echo "Removendo Kwrite..."
rpm-ostree override remove \
    kwrite || true

echo "==================================="
echo "WorkerOS: Apps removidos com sucesso!"
echo "==================================="

# Opcional: Adicionar ferramentas úteis
echo "Instalando ferramentas extras..."
rpm-ostree install \
    htop \
    btop \
    neofetch || true

echo "==================================="
echo "WorkerOS: Build concluído!"
echo "==================================="