# alpha-os-X-NETDATA
buat pengganti network monitor nya firmware sebelah masbro


syarat yang di perlukan :

sudah terinstall netdata ,kalo belum silakan install dulu masbro

ip harus 192.168.1.1 karena banyak datanya masbro kalo ipnya beda ,rubahnya repot masbro


cara install :

copy si folder "netdata" masbro ke "/www/"

lalu buka folder "netdata" lalu buka lagi folder "execute" masbro

copy si "netdata.sh" ke folder "/sbin/" masbro


lalu buka terminal masbro
lalu ketikan 

"/sbin/netdata.sh"

kalo misalkan gagal coba ketikan

"chmod +x /sbin/netdata.sh"

"/sbin/netdata.sh"

lalu buka crontab (task schedule) masbro
lalu ketik 

"* */5 * * * /sbin/netdata.sh"

(hapus tanda kutip masbro)

tinggal buka deh masbro 
http://192.18.1.1/netdata/

siap pamer masbro

property milik Alpha OS,derisamedia,indo-wrt,DBAI,Yayasan Gterongers.
Dilarang ngemod mod dimod remod remake diclaim lalu dikunci masbro. Capek bikin nya masbro.

Buat yang mau donasi silakan masbro
di 

saweria.co/derisamedia

salam masbro capybara

kalau mau biar ada menu di LuCi ,copykan aja alphanetdata.lua dan alphanetdata.htm ke masing masing direktori yang sesuai dengan yang tercantum di deskripsinya masbro

contributor:
[deri sahertian]
[dimas vito]
[chandika nurdiansyah]
