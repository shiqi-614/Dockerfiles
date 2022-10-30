apt update
apt install -y \
    git \
    wget \
    autoconf \
    automake \
    build-essential \
    bzip2 \
    ccache \
    device-tree-compiler \
    dfu-util \
    g++ \
    gcc \
    libtool \
    make \
    ninja-build \
    cmake \
    python3-dev \
    python3-pip \
    python3-setuptools \
    xz-utils

pip3 install west

echo 'export PATH=~/.local/bin:"$PATH"' >> ~/.zshrc

export ZSDK_VERSION=0.13.2
wget -q "https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${ZSDK_VERSION}/zephyr-toolchain-arm-${ZSDK_VERSION}-linux-x86_64-setup.run" && \
    sh "zephyr-toolchain-arm-${ZSDK_VERSION}-linux-x86_64-setup.run" --quiet -- -d ~/.local/zephyr-sdk-${ZSDK_VERSION} && \
    rm "zephyr-toolchain-arm-${ZSDK_VERSION}-linux-x86_64-setup.run"


