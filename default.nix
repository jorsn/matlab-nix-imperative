{ pkgs ? import <nixpkgs> {} }:

let
  targetPkgs = pkgs: with pkgs; [
    glib
    libGL
    jre
    mesa_glu
    ncurses
    pam
    zlib
  ]
  ++
  (with xorg; [
    libX11
    libXft
    libXext
    libXi
    libXmu
    libXp
    libXpm
    libXrandr
    libXrender
    libXt
    libXtst
    libXxf86vm
    libxcb
  ]);
in {
  matlab = runScript: (pkgs.buildFHSUserEnv {
    name = "matlab";
    inherit targetPkgs;
    inherit runScript;
  }).env;

  # shell where matlab can be run, e.g. for installation etc.
  matlab-shell = (pkgs.buildFHSUserEnv {
    name = "matlab-shell";
    targetPkgs = pkgs: with pkgs; targetPkgs pkgs ++ [ unzip zsh ];
    runScript = "zsh";
  }).env;
}
