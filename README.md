### Get HashedControlPassword
```
docker exec -it tor sh
```  
```
tor --hash-password mypassword
```  
16:B0CC6201A5DCE83360F9B02DE8B8FBED5B528302151EDEAE870219AD1D  

[Get obfs4 bridges](https://bridges.torproject.org/)  
### Create torrc
sudo mkdir -p /opt/tor/  
sudo nano /opt/tor/torrc

### Install
```
docker run -d --name tor -p 9050:9050 -p 9051:9051 -v /opt/tor/torrc:/etc/tor/torrc --restart unless-stopped n00b1k/tor-obfs4:1.0.7
```
### Test
```
curl --socks5 127.0.0.1:9050 https://ifconfig.co
```
