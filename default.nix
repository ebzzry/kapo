{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> {} }:

with pkgs;

assert stdenv.isLinux == true || stdenv.isDarwin == true;

let inputs = [ bash getopt coreutils gawk gnused gnugrep ];
in
stdenv.mkDerivation {
  name = "run";
  buildInputs = if stdenv.isLinux == true
                then inputs ++ [ vagrant ]
                else inputs;
}
