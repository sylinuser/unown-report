.gba
.thumb

.include "macros.s"
.include "constants.s"

.open "rom.gba", "test.gba", 0x08000000

.org allocation
.area allocation_size
    .importobj "build/linked.o"
.endarea

.org gSpecials + SPECIAL_UnownReport * SIZEOF_PTR
.word UnownReport |1

.close
