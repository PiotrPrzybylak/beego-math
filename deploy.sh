go get -v -d ./
go build -v -o MathApp
docker login -u $DH_USERNAME -p $DH_PASSWORD -e $DH_EMAIL
docker build -t ma-prod .
docker tag ma-prod:latest $DH_USERNAME/ma-prod:latest
docker push $DH_USERNAME/ma-prod:latest
#ssh -oStrictHostKeyChecking=no your_server_username@your_ip_address "~/update.sh $DH_USERNAME"
