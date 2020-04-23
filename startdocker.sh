./stopdocker.sh

echo starting docker
cd docker
docker-compose up --build -d
cd ..
