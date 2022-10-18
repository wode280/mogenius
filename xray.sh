#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8f59e630-fd42-46d6-9000-256a48a15885"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

