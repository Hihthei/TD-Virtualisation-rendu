sudo docker build . -t exercice_2
# sudo docker run exo2

sudo docker run -p --rm 3030:3030 exercice_2
curl http://localhost:3030
