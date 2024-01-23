# TabbyCAD Plugin Build Scripts

To setup for linux-x64:

```
export YOSYSHQ_LICENSE=<full_path_to_license_file>
./set-plugin-build-env-x64.sh <full_path_to_tabby_cad_root-linux-x64>
```

To setup for linux-arm64:

```
export YOSYSHQ_LICENSE=<full_path_to_license_file>
./set-plugin-build-env-arm64.sh <full_path_to_tabby_cad_root-linux-arm64>
```

Inside docker container, to build example :

```
cd hello_world
make
```
