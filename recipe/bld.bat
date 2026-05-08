@ECHO ON
%PYTHON% -m pip install . --no-deps --no-build-isolation -vv
if errorlevel 1 exit 1
%PYTHON% -c "from conda_pypi.python_paths import ensure_externally_managed; ensure_externally_managed()"
if errorlevel 1 exit 1
mkdir "%PREFIX%\condarc.d"
copy "%RECIPE_DIR%\condarc.d\conda-pypi.yml" "%PREFIX%\condarc.d\"
if errorlevel 1 exit 1
