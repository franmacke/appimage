# appimage

CLI para gestionar AppImages en Linux. Instala, corre, lista y elimina apps con integración al escritorio (icono + `.desktop`).

## Instalación

```bash
wget -qO- https://raw.githubusercontent.com/franmacke/appimage/main/install.sh | bash
```

## Uso

```bash
appimage install archivo.AppImage          # instalar (usuario)
appimage install --system archivo.AppImage # instalar (sistema, requiere sudo)
appimage run <nombre>                      # ejecutar versión actual
appimage run <nombre> <version>            # ejecutar versión específica
appimage list                              # listar apps instaladas
appimage remove <nombre>                   # desinstalar
```

## Ejemplo

```bash
appimage install LM-Studio-0.3.36-x64.AppImage
appimage run lm-studio
appimage run lm-studio 0.3.36
```

Las apps se guardan en `~/.local/appimages/<nombre>/<version>/` con un symlink `current` apuntando a la versión activa.
