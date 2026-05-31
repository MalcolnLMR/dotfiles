This how-to expects you to have a available Ec2 instance. If not configurated yet, follow the [[Create EC2]] guide.
The commands will be from ubuntu.
## Basics and installation
1. Start updating your system
```bash
sudo apt update && sudo apt upgrade
```
2. Install prerequisites for PPA Management
```bash
sudo apt install software-properties-common ca-certificates lsb-release -y
```
3. Add the ondrej sury PHP PPA
```bash
sudo add-apt-repository ppa:ondrej/php -y
```
```bash
sudo apt update
```
### Installing Nginx
1. Install required packages
```bash
sudo apt install nginx -y
```
2. Start and enable the nginx service (if needed)
```bash
sudo systemctl enable nginx --now
```
#### Configure UFW for Nginx
This procedure may not be needed as the ubuntu install from AWS already configures UFW
1. Install the required packages
```bash
sudo apt install ufw -y
```
2. Add new UFW rules
```bash
sudo ufw allow 'Nginx FULL'
```
2. Enable UFW (also add OpenSSH to keep the ssh connection with AWS alive)
```bash
sudo ufw enable
```

### Installing PHP8.5 with Nginx and PHP-FPM
1. Install required packages
```bash
sudo apt install php8.5 php8.5-fpm php8.5-cli
```
2. Start and enable the php-fpm
```bash
sudo systemctl enable php8.5-fpm --now
```
