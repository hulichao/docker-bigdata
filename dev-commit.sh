git config --global user.email "jsu_hlc@163.com"
git config --global user.name "hulichao"
git add -u .
git commit -m "update"
git push origin dev

docker commit -a "hulichao" -m "update a little" linux121 hoult/linux121
docker commit -a "hulichao" -m "update a little" linux122 hoult/linux122
docker commit -a "hulichao" -m "update a little" linux123 hoult/linux123


#docker commit -a "hulichao" -m "update a little" hadoop1 hoult/hadoop1
#docker commit -a "hulichao" -m "update a little" hadoop2 hoult/hadoop2
#docker commit -a "hulichao" -m "update a little" hadoop3 hoult/hadoop3
#docker commit -a "hulichao" -m "update a little" hadoop4 hoult/hadoop4
#docker commit -a "hulichao" -m "update a little" hadoop5 hoult/hadoop5
