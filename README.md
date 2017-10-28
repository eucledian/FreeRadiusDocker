# FreeRadiusDocker
A dockerfile for free radius based on alpine

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
