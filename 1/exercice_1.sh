sudo docker build . -t exercice_1
sudo docker run --rm exercice_1

sudo docker run -v --rm $(pwd)/bash.sh:/opt/bash.sh exercice_1

# echo "je décommente cette ligne quand je relance le script\n"
