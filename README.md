# nix-gl-installer

nix-gl-installer solve the ["OpenGL" problem](https://nixos.wiki/wiki/Nixpkgs_with_OpenGL_on_non-NixOS) with nix by installing user-space driver into `/run/opengl-driver`. Tested on NVIDIA and Intel GPUs.

## Usage
Running this script with root privileges may cause driver detection failure. Please execute with user privileges.

### Install
```sh
curl https://raw.githubusercontent.com/Pylgos/nix-gl-installer/main/nix-gl-installer > ./nix-gl-installer
bash ./nix-gl-installer
```

### Uninstall
```sh
/opt/nix-gl-installer/nix-gl-installer uninstall
```

### Activate
Required on every startup if auto-activation was not enabled during installation.
```sh
/opt/nix-gl-installer/nix-gl-installer activate
```

## Credit
This script is heavily inspired by the following projects.
* https://github.com/guibou/nixGL.git
* https://github.com/deepfire/nix-install-vendor-gl.git