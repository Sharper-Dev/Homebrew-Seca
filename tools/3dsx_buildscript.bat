3dstool -cvtf romfs "../romfs.bin" --romfs-dir "../romfs"
3dsxtool "../build assets/source.elf" "../build/lpp-3ds.3dsx" --romfs="../romfs.bin" --smdh="../build assets/source.smdh"