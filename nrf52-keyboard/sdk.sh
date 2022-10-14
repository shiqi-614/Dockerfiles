
# SDK
wget http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v15.x.x/nRF5_SDK_15.3.0_59ac345.zip -O /tmp/nRF5_SDK_15.3.0_59ac345.zip
unzip -q /tmp/nRF5_SDK_15.3.0_59ac345.zip -d /tmp
rm -r /tmp/nRF5_SDK_15.3.0_59ac345/examples /tmp/nRF5_SDK_15.3.0_59ac345/documentation /tmp/nRF5_SDK_15.3.0_59ac345/*.msi
cp -r /tmp/nRF5_SDK_15.3.0_59ac345/* /work/nrf52-keyboard/SDK/


# Cleanup
rm -rf /tmp/*
