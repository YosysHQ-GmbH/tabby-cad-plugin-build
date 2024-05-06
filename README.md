# Tabby CAD Plugin Build Scripts

[Yosys plugins](https://yosyshq.readthedocs.io/projects/yosys/en/latest/yosys_internals/extending_yosys/extensions.html#compiling-to-a-plugin) must be compiled in the same environment as the Yosys binary that loads them. The dockerfiles in this repository recreate an environment compatible with the Yosys binaries from [Tabby CAD Suite](https://www.yosyshq.com/tabby-cad-datasheet) and [OSS CAD Suite](https://github.com/YosysHQ/oss-cad-suite-build/releases/).

When using Tabby CAD Suite, the script will forward your license so that you can also run yosys inside the docker container to test your plugins. Ensure that your YOSYSHQ_LICENSE environment variable is set before using the commands below.

To set up the docker container for linux-x64 builds:
```
./set-plugin-build-env-x64.sh <full_path_to_tabby_cad_root-linux-x64>
```

To set up the docker container for linux-arm64 builds:
```
./set-plugin-build-env-arm64.sh <full_path_to_tabby_cad_root-linux-arm64>
```

If you need other OS/ISA combinations, please open an issue.

Inside the docker container, you can test with the provided 'hello world' example plugin:
```
cd hello_world
make
```
