# docker-sentry
Containerized Sentry service

To start the whole thing:
```
./bin/marathon start
```

To start individual components:

```
curl -sX POST -H "Content-type: application/json" ${MARATHON_URL}/v2/apps -d @marathon/<component>.json | jq '.'
```
