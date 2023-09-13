rm -rf docs
mkdir docs
cd strings
flutter build web --release
cd ..
cp -r strings/build/web/* docs
cd docs
echo "tflow.dev" >> CNAME