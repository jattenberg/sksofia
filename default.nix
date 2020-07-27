{ pkgs ? import (fetchTarball https://git.io/Jf0cc) {} }:

let
  sofia-ml = pkgs.gccStdenv.mkDerivation {
    name = "sofia-ml-0.1";
    src = src/.;
    buildPhase = ''
      make
    '';
    checkPhase = "[ -f sofia-ml ]";
    installPhase = ''
      mkdir -p $out/bin
      cp sofia-ml $out/bin
    '';
  };
in
pkgs.mkShell {
  buildInputs = [ sofia-ml ];
}