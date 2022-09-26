cd eureka-service/
mvn clean && mvn package -DskipTests
docker build . -t eureka-server
cd ..

cd config-service/
sh make.sh
cd ..

cd movies-service/
mvn clean && mvn package -DskipTests
docker build . -t movies-service
cd ..

cd catalog-service/
mvn clean && mvn package -DskipTests
docker build . -t catalog-service
cd ..

cd gateaway-service/
sh make.sh
cd ..

cd series-service/
sh make.sh
cd ..

docker-compose up
