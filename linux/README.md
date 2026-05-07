
# Dual boot fix 
```bash
timedatectl set-local-rtc 1 --adjust-system-clock
```


# Chromium, Thonny e MS FONTS
```bash
sudo apt update
sudo apt install chromium -y
sudo apt install thonny -y
sudo apt install ttf-mscorefonts-installer -y
```

# VS Code
```bash
sudo apt update
sudo apt install software-properties-common apt-transport-https curl

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update
sudo apt install code
```


# User aluno
```bash
sudo useradd -m -g users -s /bin/bash aluno
sudo usermod -aG dialout aluno
```

***
# Limpezas
```
sudo apt update
sudo apt purge mintchat thunderbird -y
```

***
# GRUB Bootloader Themes
```bash
sudo apt update
sudo apt install git -y
git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes
cd Top-5-Bootloader-Themes
sudo ./install.sh
```

# grub-customizer
```bash
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer
```


Editar entradas no menu
```bash


sudo update-grub
```
