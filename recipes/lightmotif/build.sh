#!/usr/bin/env bash
set -euo pipefail

cd "${SRC_DIR}"

# Use pyproject.toml [tool.maturin] settings (manifest-path = lightmotif-py/Cargo.toml).
${PYTHON} -m pip install . \
    --no-deps \
    --no-build-isolation \
    --disable-pip-version-check

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
