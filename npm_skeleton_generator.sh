echo "Please enter your module's name: "
read name
mkdir $name
wait
cp -rf template/src $name/
wait
cd $name/
mv src/bin/template src/bin/$name
sed -i 's/{{template}}/'$name'/g' src/bin/$name
mv src/lib/template.js src/lib/$name.js
wait
sed -i 's/{{template}}/'$name'/g' src/lib/$name.js&
sed -i 's/{{template}}/'$name'/g' src/package.json&
sed -i 's/{{template}}/'$name'/g' src/README.md


