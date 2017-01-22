
# mosquitto on Alpine

Only about 7 MB size

Another version is [mqtt on Ubuntu](https://github.com/ypzhuang/mqtt)

###Port:
1883 Plain MQTT protocol

8883 MQTT over TLS/SSL

9001 Plain WebSockets

9883 WebSockets over TLS/SSL


###Run:
```
docker run -d -p 1883:1883 -p 8883:8883 -p 9001:9001 -p 9883:9883 ypzhuang/mqtt_on_alpine
```