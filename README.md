## Unown Report

The Johto-based games introduced a feature where you can view a log of the Unown forms you have captured. This ports that feature to FR ROMs.

### Build Instructions

See [here](https://gist.github.com/Zeturic/db1611cc7b17c3140f9b9af32e1b596b) for the prequisites and help in installing them.

#### Cloning the repo and building the tools

Open your terminal to whatever folder you want to download this repo into. Then, do the following to download the repo and build the included tools:

```shell
$ git clone https://github.com/sphericalice/bpre-unown-report.git
$ cd bpre-unown-report
$ ./build_tools.sh
```

#### Adding your ROM

Copy your ROM to this directory and rename it `rom.gba`.

#### Building the project itself

The build system is smart enough to find enough free space on its own.

However, if you want the code to be inserted at a particular address, you can specify it by updating the definition of `START_AT` in `config.mk`; if the given address is acceptable (i.e. is word-aligned and has enough bytes of free space), it will be inserted there. Otherwise, it will just use `START_AT` to determine where in the ROM it should start looking for free space.

If you want to edit the strings involved in this feature - for example, to decapitalize `UNOWN` to `Unown` - they can be found and modified in `src/strings.c`.

Once you're ready, run the following to build the project:

```shell
make
```

This won't actually modify `rom.gba`, instead your output will be in `test.gba`. Naturally, test it in an emulator.

### Credits

The project structure, `charmap.txt` and `Preproc` are all from [pokeemerald](https://github.com/pret/pokeemerald).
This repository is also heavily based on work done by [Zeturic](https://github.com/Zeturic).