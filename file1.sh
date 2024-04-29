#!/bin/bash
while true; do
    echo -e "HTTP/1.1 200 OK\r\nContent-Length: 0\r\n\r\n" | socat - TCP-LISTEN:8080,reuseaddr
# Run script1.sh using the source or . command
gsutil cp ${FILEPATH} /tmp/import.sh
echo ${FILEPATH}
chmod +x /tmp/import.sh
source /tmp/import.sh
done