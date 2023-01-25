#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi
sleep 1 && curl -s https://raw.githubusercontent.com/tinnguyen162002/logo/main/logo.sh | bash && sleep 1

echo -e '\n\e[42mInstall Docker\e[0m\n' && sleep 1
sudo apt install -y ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker $USER
echo -e '\n\e[42mInstall ZIP\e[0m\n' && sleep 1

sudo apt install unzip
echo -e '\n\e[42mInstall exdore\e[0m\n' && sleep 1

wget https://github.com/exorde-labs/ExordeModuleCLI/archive/refs/heads/main.zip \
--output-document=ExordeModuleCLI.zip
cd $HOME
unzip ExordeModuleCLI.zip \
&& rm ExordeModuleCLI.zip \
&& mv ExordeModuleCLI-main ExordeModuleCLI
cd ExordeModuleCLI

docker build -t exorde-cli:latest .

docker run -d --restart unless-stopped --pull always --name tinnn1 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn2 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn3 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn4 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4


docker run -d --restart unless-stopped --pull always --name tinnn5 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn6 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4


docker run -d --restart unless-stopped --pull always --name tinnn7 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4
