echo Installing XMRig
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev screen -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
mv xmrig x
killall screen
screen -dmS s
screen -S s -X stuff "cd ~/xmrig/build && echo Setup complete, starting XMRig... && ./x -o pool.supportxmr.com:443 -u 47sbi6AB9XrTYbtp4JDMKvftnhBo3Q5BLGtNjgBr9afNBgziCToTTWq8Pd4RrMK7ftEu9JbZpjJqKSud3NgL9cCKFJfmjVy -k --tls -p VM1\n"
screen -r s
