tar.exe -a -c -f pack.zip data pack.mcmeta pack.png
git add .
git commit -a -m "Automated resourcepack upload"
git push origin master