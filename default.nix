with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "run";
    buildInputs = [ bash getopt coreutils gawk gnused gnugrep vagrant linuxPackages.virtualboxHeadless ];
}
