# shell.nix
with import <nixpkgs> {};

mkShell {
  name = "dotnet-env";
  packages = [
    dotnet-sdk_6
  ];
  nativeBuildInputs = [
  ];
}
