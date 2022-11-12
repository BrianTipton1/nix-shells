{pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  buildInputs = 
    let
       myHaskell = pkgs.haskellPackages.ghcWithPackages;
    in 
        [
          (myHaskell (hpkgs: [
            hpkgs.pretty-simple
          ]))
        ];
  }

