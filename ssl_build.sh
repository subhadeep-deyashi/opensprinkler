
#!/bin/bash
set -e
IP=$1
LOCATION="$2"
TIMEZONE=$3
CERTBITS=$4
C=$PWD


echo "create certificate"
./create_cert.sh $IP $CERTBITS

echo "set device details in code"

./generate_code.sh "$LOCATION" $TIMEZONE
echo "build code"
make -f make.lin30

