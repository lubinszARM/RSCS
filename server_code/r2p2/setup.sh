## git clone repo
# git clone https://github.com/kkaffes/r2p2-worker.git

## modify dpdk configuration, done manually
#### comment out "CPU_ASFLAGS ?= -felf64" in dpdk/mk/arch/x86_64/rte.vars.mk

**NOTE**
reboot the machines to clear the old hugepages

## build custom dpdk
cd dpdk-stable-16.11.1; make install T=x86_64-native-linuxapp-gcc DESTDIR=/home/shawn/r2p2/shinjuku-netx/r2p2/dpdk-stable-16.11.1

## set Environment vars
export RTE_SDK=/home/shawn/r2p2/shinjuku-netx/r2p2/dpdk-stable-16.11.1/
export RTE_TARGET=x86_64-native-linuxapp-gcc


## bind dpdk_server for 40G NIC
cd dpdk-stable-16.11.1/tools/;./tools.sh setup_dpdk

## activate VFs, need to be done as root
## verify the max_vfs after modification
sudo bash;echo 8 > /sys/bus/pci/devices/0000\:05\:00.0/max_vfs

## bind igb_uio to VFs
cd dpdk-stable-16.11.1/tools/
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.0
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.1
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.2
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.3
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.4
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.5
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.6
sudo ./dpdk-devbind.py --bind=igb_uio 05:02.7

# compile
cd r2p2_worker; make

# run as root
sudo bash
sudo ./build/main
