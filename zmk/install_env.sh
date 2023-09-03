wget https://apt.kitware.com/kitware-archive.sh
bash kitware-archive.sh

apt update
apt install --no-install-recommends git cmake ninja-build gperf \
  ccache dfu-util device-tree-compiler wget \
  python3-dev python3-pip python3-setuptools python3-tk python3-wheel xz-utils file \
  make gcc gcc-multilib g++-multilib libsdl2-dev libmagic1 -y

pip3 install west

echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.zshrc

wget https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.15.0/zephyr-sdk-0.15.0_linux-x86_64.tar.gz
tar xvf zephyr-sdk-0.15.0_linux-x86_64.tar.gz
bash zephyr-sdk-0.15.0/setup.sh -t all -h -c 
rm zephyr-sdk-0.15.0_linux-x86_64.tar.gz
rm kitware-archive.sh
