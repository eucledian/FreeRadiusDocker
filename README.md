# FreeRadiusDocker
A dockerfile for free radius based on alpine

## Running the docker
```shell
docker run -d --name radius -p 1812-1814:1812-1814/udp -p 1812-1814:1812-1814 -p 18120:18120 eucledian/radius-server
```



## testing
add
```shell
client <clientname> {
  ipaddr = X.X.X.X
  secret = <password>
}
```
to the `client.conf` to whitelsit the cleint that will make the requests

the localhost is already whitelisted

add
```shell
<name> Cleartext-Password := <password>
```
to the `raddb/mods-config/files/authorize` to add a test user

testing the server 
```shell
radtest *[username]* *[password]* *[ip-address-radius]* *[nat]* *[secret]*
```
