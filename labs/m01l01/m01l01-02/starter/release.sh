set -euo pipefail

echo "step one: test"
bash tests/run.sh

echo "step two: build"
mkdir -p dist
cp app/main.py dist/main.py

echo "step three: package"
tar -cf dist/app.tar -C dist main.py
echo "artifact: dist/app.tar"
