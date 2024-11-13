# SDL Prince of Persia (for MiyooCFW)

SDL2 port of the original "Prince of Persia" (1989) platform game.

### Requirements
 - original [POP1](https://www.popot.org/get_the_games/software/PoP1.zip) (DOS version) *.DAT files placed at `./data/` directory

### Build steps
- compile (SDK):
```
cd src
mkdir build
cmake -C miyoo.cmake -B build
make -j$(nproc) -C build
cd ..
```
- generate IPK (gm2xpkg):
```
export ASSETSDIR="$(mktemp -d)"
cp -r --parents doc mods data/light.png $ASSETSDIR
cp data/icon.png $ASSETSDIR/prince.png
cp SDLPoP.ini $ASSETSDIR/SDLPoP.ini-EXAMPLE
gm2xpkg -i -c -q -f miyoopkg.cfg
```

### Notes:

You can use `SDLPoP.ini-EXAMPLE` file to add your own game configuration (place at PWD and remove `-EXAMPLE` appendix).