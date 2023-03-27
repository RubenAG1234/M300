# Vagrant als Webserver
Es wird eine Installation des Ubuntu-Servers durchgeführt, einschließlich einer automatischen Installation des Apache-Webservers. Zusätzlich wird das Verzeichnis "/var/www/html" der virtuellen Maschine mit dem lokalen Verzeichnis "html" synchronisiert.

## Automatischer Webserver
Um den Webserver automatisch zu installieren, kann man im "Vagrantfile" Bash Befehle oder auch Skripte hinterlegen. Ich habe es mit einem Script gemacht.
```
config.vm.provision "shell", path: "./script/script.sh"

```

## script
Das hinterlegte Script führt folgende Befehle aus.
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y apache2
sudo apt-get install -y ufw
sudo apt-get install -y libapache2-mod-proxy-html
sudo apt-get install -y libxml2-dev

sudo ufw --force enable
sudo ufw allow 80/tcp
sudo ufw allow 22
sudo ufw allow from [192.168.33.10] to any port 22

sudo a2enmod proxy
sudo a2enmod proxy_html
sudo a2enmod proxy_http

```
Die apt-get Befehle, schauen, dass die VM auf den neusten Stand ist, und dann installiert er apache Webserver, UFW Firewall und Reverse Proxy

Die ufw Befehle, aktiviert die Firewall und dann machen noch ein paar ausnahmen.

Die a2enmod Befehle, installiern Module für apace, und in diesem Fall installieren sie den revers proxy

## Lokalen Ordner mit VM Ordner verknüpfen
Um einen lokalen Ordner mit der Virtuellen Maschine zu teilen, muss man folgende Angabe machen im Vagrantfile
```
config.vm.synced_folder "./html", "/var/www/html"
```

## Web Zugriff vom lokalen PC auf die VM
Um nun auch auf den Webserver zugreifen zu können muss ein Port vom lokalen PC auf die VM weitergeleitet werden. 
Dafür muss man folgendes im Vagrantfile angeben.

```
config.vm.network "forwarded_port", guest:80, host:420, auto_correct: true
```
Dies bedeutet, dass der lokale Port "420" weitergeleitet wird auf Port "80" in der VM.


# Vagrant als Webserver

Um die die Vm schon vor zu konfigurieren, kann man einfach die Vagrantfile editieren