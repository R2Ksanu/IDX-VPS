# dev.nix
with import <nixpkgs> {};

mkShell {
  # Packages to install in the shell
  buildInputs = [
    unzip
    openssh
    git
    qemu_kvm
    sudo
    cdrkit
    cloud-utils
    qemu
  ];

  # Environment variables
  shellHook = ''
    export EDITOR=nano
  '';

  # Optional: Workspace / IDE extensions placeholders
  # These are just informational; nix-shell won't use them automatically
  idx = {
    channel = "stable-24.05";
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = { };
      onStart = { };
    };

    previews = {
      enable = false;
    };
  };
}
