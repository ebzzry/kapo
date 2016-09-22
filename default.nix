with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "run";
    buildInputs = [ bash getopt coreutils vagrant linuxPackages.virtualboxHeadless ];
}
