{ pkgs ? import <nixpkgs> {} }:
let
  my-python = pkgs.python3;
  node = pkgs.nodejs;
  python-with-my-packages = my-python.withPackages (p: with p; [
   python-lsp-server
  ]);
in
pkgs.mkShell {
  buildInputs = [
    python-with-my-packages
    node
  ];
  shellHook = ''
    PYTHONPATH=${python-with-my-packages}/${python-with-my-packages.sitePackages}
  '';
}
