set -ex
$PYTHON -m pip install . --no-deps --no-build-isolation -vv
$PYTHON -c "from conda_pypi.python_paths import ensure_externally_managed; ensure_externally_managed()"
mkdir -p "${PREFIX}/condarc.d"
cp "${RECIPE_DIR}/condarc.d/conda-pypi.yml" "${PREFIX}/condarc.d/"
