host="fabmedical-615400.mongo.cosmos.azure.com"
username="fabmedical-615400"
password="gBUTdU1b7OEwfZRwPRJCz6MZnBm0XoenOv759ip93uMN8LJQ5BimaDHLB8SOJD1njC6qVB0JZy9E16pEBSubqw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done