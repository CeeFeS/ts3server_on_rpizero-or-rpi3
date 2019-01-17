# ts3server_on_rpizero-or-rpi3
Simple Installation Bash Script for Hosting your own TS3 Server on a RaspberryPi Zero or RaspberryPi3

## Difference between TS- Server on RPIzero and RPI3
The bash-script for each modell is slightly different between RPIzero/RPI1 and RPI2/RPI3. The RPIzero or RPI1 series can not use the latest Teamspeak version, because these require NEON which is not implemented in RPI1 and RPIzero.
I recommend the use of a RPI2 at least. With an older version of Teamspeak- Server, you can only connect with an older version of Teamspeak- Client. 

## Teamspeak - Server for RaspberryPiZero/RPI1
``` 
$ wget https://github.com/CeeFeS/ts3server_on_rpizero-or-rpi3/blob/master/rp1zero.sh
$ bash rp1zero.sh
```

## Teamspeak - Server for RaspberryPi2/RPI3

``` 
$ wget https://github.com/CeeFeS/ts3server_on_rpizero-or-rpi3/blob/master/rp3.sh
$ bash rp3.sh
```
