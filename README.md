# Solution
docker run -d infracloudio/csvserver:latest\
docker ps -a
docker logs 702d02076734
nano gencsv.sh
bash gencsv.sh
docker cp inputFile 702d02076734:/csvserver/inputdata
docker start 702d02076734
docker stop 702d02076734
docker commit funny_proskuriakova csvserver
docker run -d -p 9393:9300 --name csv csvserver
docker stop 8140d4ee42c0
docker run -d -p 9393:9300 -e CSVSERVER_BORDER=Orange csvserver
docker ps
curl -o ./part-1-output http://localhost:9393/raw (to get part-1-output )
