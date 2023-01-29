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
sudo apt install docker.io -y
echo -e '\n\e[42mInstall ZIP\e[0m\n' && sleep 1

sudo apt install unzip
echo -e '\n\e[42mInstall exdore\e[0m\n' && sleep 1

docker run -d --restart unless-stopped --pull always --name tinnn1 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn2 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn3 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn4 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker run -d --restart unless-stopped --pull always --name tinnn5 exordelabs/exorde-cli -m 0x3dc8f74A99B35f8acfDe576BEC37DAC26073b6DB -l 4

docker container logs -f tinnn1

htop

