#!/usr/bin/env bash

NAME=neoram-drive

mkdir -p build
vasm6502_oldstyle -cbm-prg -Fbin -chklabels -nocase -dotdir \
                  src/$NAME.asm -o build/$NAME.prg -L build/$NAME.lst
