tar.exe -a -c -f pack.zip data pack.mcmeta pack.png
git add .
git commit -a -m "Automated datapack upload"
git push origin