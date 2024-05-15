Este repositorio contiene los archivos de configuración ya ajustados de:
### sxhkd

```
#
# wm independent hotkeys
#

# terminal emulator
super + Return
	qterminal

# program launcher
super + d
	rofi -show run

# make sxhkd reload its configuration files:
super + Escape
	pkill -USR1 -x sxhkd

#
# bspwm hotkeys
#

# quit/restart bspwm
super + alt + {q,r}
	bspc {quit,wm -r}

# close and kill
super + {_,shift + }w
	bspc node -{c,k}

# alternate between the tiled and monocle layout
super + m
	bspc desktop -l next

# send the newest marked node to the newest preselected node
super + y
	bspc node newest.marked.local -n newest.!automatic.local

# swap the current node and the biggest window
super + g
	bspc node -s biggest.window

#
# state/flags
#

# set the window state
super + {t,shift + t,s,f}
	bspc node -t {tiled,pseudo_tiled,floating,fullscreen}

# set the node flags
super + ctrl + {m,x,y,z}
	bspc node -g {marked,locked,sticky,private}

#
# focus/swap
#

# focus the node in the given direction
super + {_,shift + }{Left,Down,Up,Right}
	bspc node -{f,s} {west,south,north,east}

# focus the node for the given path jump
super + {p,b,comma,period}
	bspc node -f @{parent,brother,first,second}

# focus the next/previous window in the current desktop
super + {_,shift + }c
	bspc node -f {next,prev}.local.!hidden.window

# focus the next/previous desktop in the current monitor
super + bracket{left,right}
	bspc desktop -f {prev,next}.local

# focus the last node/desktop
super + {grave,Tab}
	bspc {node,desktop} -f last

# focus the older or newer node in the focus history
super + {o,i}
	bspc wm -h off; \
	bspc node {older,newer} -f; \
	bspc wm -h on

# focus or send to the given desktop
super + {_,shift + }{1-9,0}
	bspc {desktop -f,node -d} '^{1-9,10}'

#
# preselect
#

# preselect the direction
super + ctrl + alt + {Left,Down,Up,Right}
	bspc node -p {west,south,north,east}

# preselect the ratio
super + ctrl + {1-9}
	bspc node -o 0.{1-9}

# cancel the preselection for the focused node
super + ctrl + space
	bspc node -p cancel

# cancel the preselection for the focused desktop
super + ctrl + shift + space
	bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel

#
# move/resize
#

# expand a window by moving one of its side outward
#super + alt + {h,j,k,l}
#	bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}

# contract a window by moving one of its side inward
#super + alt + shift + {h,j,k,l}
#	bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}

# move a floating window
#super + {Left,Down,Up,Right}
#	bspc node -v {-20 0,0 20,0 -20,20 0}

# Custom: move a floating windows
super + ctrl + {Left,Down,Up,Right}
	bspc node -v {-20 0, 0 20, 0 -20, 20 0}

# Custom: move/resize
alt + super + {Left,Down,Up,Right}
	/home/s1or/.config/bspwm/scripts/bspwm_resize {west,south,north,east}

# Custom: open firefox
super + shift + f
	firejail /opt/firefox/firefox
```

Nota: Para este archivo se manda a llamar **qterminal** que es la terminal por defecto de Kali Linux (2024)
### Bspwm

https://github.com/baskerville/bspwm

### Polybar

Para la polybar yo ocupe la estructura de archivos que trae el tema de: https://github.com/VaughnValle/blue-sky.

```
📁 fonts
📁 script
📃 colors.ini
📃 colors_dark.ini
📃 colors_light.ini
📃 config
📃 current.ini
📃 launch.sh
📃 workspaces
```

> [!WARNING] Importante
> Como pueden aprecian en el launch.sh, yo cree mi propio modulo donde inclui la polybar dentro del current.ini
> 
> El thema de blue skye lo mantiene por separado, pero para poder ajustar lo que yo queria, necesitaba meterlo dentro de un solo archivo.

### Fonts del sistema

Para las fuentes use la pagina de: https://www.nerdfonts.com/

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/1c3c961c-d16c-47bb-997a-0c0e674bb5cf)

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/0dc9367f-09a0-495a-9b93-4a6c212990d2)

> [!TIP] Ambas deben están instaladas en la ruta: **/usr/local/share/fonts/**
> Este directorio es más general y suele contener fuentes adicionales instaladas localmente, es decir, fuentes que no son parte de la distribución base del sistema operativo. Las fuentes que se instalan aquí pueden provenir de diferentes fuentes, como fuentes personalizadas descargadas de la web o fuentes específicas de proyectos locales. Este directorio es útil para los usuarios que desean instalar fuentes personalizadas sin afectar las fuentes del sistema.

### Fonts manuales

Si en algún dado algunos iconos, letras, etc. les llega a dar problemas, les recomiendo tener las fuentes que tengo yo en la carpeta **truetype/**

> [!TIP] /usr/share/fonts/truetype
> Este directorio generalmente contiene las fuentes TrueType instaladas por el sistema o por aplicaciones que provienen de los repositorios de software oficiales. Estas fuentes son comúnmente utilizadas por el sistema y las aplicaciones para proporcionar una experiencia de visualización de texto coherente y legible. Las fuentes aquí pueden ser accedidas por cualquier usuario del sistema.

## Resultado

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/992ceb2a-570b-43b0-88b0-f59261dddd86)

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/c8b4abbf-84df-43a4-957f-65341b1f3e96)

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/276adca6-c427-4e00-b22b-33ca3cdfc877)

![imagen](https://github.com/S10r07/KaliCustom/assets/52427821/ea418eab-e60e-4556-be3c-24d7e124c3e0)

