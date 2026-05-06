
# Chromium
```bash
sudo apt update
sudo apt install chromium -y
```

# MS Core Fonts
```bash
sudo apt update
sudo apt install ttf-mscorefonts-installer -y
```



# Thonny
```
sudo apt update
sudo apt install thonny -y
```

# VS Code
```bash
sudo apt update
sudo apt install software-properties-common apt-transport-https curl
```

```bash
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg > /dev/null
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
```

```bash
sudo apt update
sudo apt install code
```



# GRUB Bootloader Themes
```bash
sudo apt update
sudo apt install git -y
git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes
cd Top-5-Bootloader-Themes
sudo ./install.sh
```

