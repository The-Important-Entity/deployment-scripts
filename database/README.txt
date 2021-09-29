
# Create a new postgres container
# USAGE: ./run.sh <password> <port> <datadir>
sudo ./run.sh password123 5432 /home/jscalera/data/pg

# start a new shell in postgres container
sudo docker exec -it pg bash

# destroy container
sudo ./stop.sh

# delete the data directory if you want to wipe the database. Stop the container first ^^
sudo rm -r /home/jscalera/data/pg