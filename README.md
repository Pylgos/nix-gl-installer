# nix-gl-installer

The `nix-gl-installer` addresses the "OpenGL problem" on Nix by installing a user-space driver into `/run/opengl-driver`. It has been tested on NVIDIA and Intel GPUs.

## Usage
> [!NOTE]
> Running this script with root privileges may lead to driver detection failure. Please execute it with user privileges.

### Installation
Execute the following commands to download and run the `nix-gl-installer`:
```sh
curl -L https://raw.githubusercontent.com/Pylgos/nix-gl-installer/main/nix-gl-installer -o nix-gl-installer
bash ./nix-gl-installer
```

### Uninstallation
To remove the installed `nix-gl-installer`, run the following command:
```sh
/opt/nix-gl-installer/nix-gl-installer uninstall
```

### Activation
If auto-activation was not enabled during installation, you need to activate it on every startup with the following command:
```sh
/opt/nix-gl-installer/nix-gl-installer activate
```

## Credits
This script is heavily inspired by the following projects.
* https://github.com/guibou/nixGL.git
* https://github.com/deepfire/nix-install-vendor-gl.git
