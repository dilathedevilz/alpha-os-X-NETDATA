
# alpha-os-X-NETDATA 
buat pengganti network monitor nya firmware sebelah masbro
## Fitur

- Monitoring NETDATA
- Realtime Monitoring 
- Support semua firmware ( kek fw sebelah )

## Syarat Pasang

- Terinstall package `netdata ubus`
- jika belum menginstall `netdata ubus` bisa eksekusi command ini di terminal `opkg update && opkg install netdata ubus`
- IP Gateway harus `192.168.1.1` ( Soalnya kalau selain itu bakal ngedit banyak masbroooooo. )


## Cara Install Netdata

- Download / Clone repository ini
- Copy Folder `netdata` ke folder `/www/`
- Buka folder `/www/netdata/execute` masbro
- Copy / Cut file `netdata.sh` ke folder `/sbin/`
- Lalu ketik di terminal `chmod +x /sbin/netdata.sh`
- Lanjot ketik di terminal `/sbin/netdata.sh`
- Edit crontab / Scheduled task di LuCi dan tambahkan command `* */5 * * * /sbin/netdata.sh`
- Tinggal Pancal di website http://192.168.1.1/netdata/
Ready pamer dah akwoakaoak

## Cara nambah di menu LuCi Dashboard 

- copy aja `alphanetdata.lua` dan `alphanetdata.htm` ke masing masing direktori yang sesuai dengan yang tercantum di deskripsinya masbro

## Donasi

Buat yang mau donasi silahkan masbro
- [ Saweria ](https://saweria.co/derisamedia)

## Contributor
- [deri sahertian](https://github.com/derisamedia)
- [dimas vito](https://github.com/nosignals)
- [chandika nurdiansyah](https://github.com/chandika7d)
## Tentang


Property milik ***Alpha OS, derisamedia, indo-wrt, DBAI, Yayasan Gterongers***. Dilarang ***ngemod mod dimod remod remake diclaim*** lalu dikunci masbro. Capek bikin nya masbro.

### Salam Copybara
