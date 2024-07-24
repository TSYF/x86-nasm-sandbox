let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    nasm
    gcc
    libgcc
  ];

  shellHook = ''
    echo "GCC Shell ON."
    fish
  '';
}

# stdenv.mkShell {
#   packages = with pkgs; [
#     nasm
#     gcc
#   ];
# }