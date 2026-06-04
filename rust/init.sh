#!/usr/bin/env bash

mkdir -pv ~/.cargo/

cat >~/.cargo/config.toml <<'EOF'
[source.crates-io]
replace-with = 'mirror'

[source.mirror]
registry = "sparse+https://mirrors.cernet.edu.cn/crates.io-index/"

[registries.mirror]
index = "sparse+https://mirrors.cernet.edu.cn/crates.io-index/"
EOF
