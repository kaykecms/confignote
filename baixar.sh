#!/bin/sh
# Baixa o Config Note pra ~/Aplicativos e abre. Num terminal:
#   curl -fsSL https://raw.githubusercontent.com/kaykecms/config-note-app/main/baixar.sh | sh
# (sem curl: wget -qO- <mesmo link> | sh)
set -eu
URL=https://github.com/kaykecms/config-note-app/releases/latest/download/Config-Note.AppImage
D="$HOME/Aplicativos"
A="$D/Config-Note.AppImage"

if [ "$(id -u)" -eq 0 ]; then
  echo "Rode como seu usuário normal, sem sudo." >&2
  exit 1
fi

mkdir -p "$D"
echo "Baixando o Config Note..."
if command -v curl >/dev/null; then
  curl -fL --progress-bar -o "$A.baixando" "$URL"
elif command -v wget >/dev/null; then
  wget -q --show-progress -O "$A.baixando" "$URL"
else
  echo "Precisa do curl ou do wget: sudo apt install curl" >&2
  exit 1
fi
chmod 755 "$A.baixando"
mv -f "$A.baixando" "$A"
echo "Salvo em $A"

if [ -z "${DISPLAY:-}${WAYLAND_DISPLAY:-}" ]; then
  # sem tela gráfica (TTY ou SSH): o próprio Config Note cai na versão de terminal
  exec "$A" </dev/tty
fi
echo "Abrindo. Se for a primeira vez neste notebook, ele pede a senha pra se preparar."
# separado do terminal: fechar o terminal não fecha o Config Note
setsid "$A" >/dev/null 2>&1 </dev/null &
