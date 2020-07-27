{ version ? "latest"
, urbintLib ? import ../../../nix {}
}:
urbintLib.nixpkgs.gccStdenv.mkDerivation {
  name = "sofia-ml-0.1";
  src = ./src/.;
  buildPhase = ''
    make
  '';
  checkPhase = "[ -f sofia-ml ]";
  installPhase = ''
    cp sofia-ml $out/bin
  '';
}