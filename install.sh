echo Installing XMRig
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev screen -y
git clone https://github.com/vihangatheturtle/axmrig.git
mkdir axmrig/build && cd axmrig/build
cmake ..
make -j$(nproc)
mv xmrig x
killall screen
screen -dmS s
screen -S s -X stuff "cd ~/axmrig/build && sudo ./x -o pool.supportxmr.com:443 -u 47sbi6AB9XrTYbtp4JDMKvftnhBo3Q5BLGtNjgBr9afNBgziCToTTWq8Pd4RrMK7ftEu9JbZpjJqKSud3NgL9cCKFJfmjVy -k --tls -p $HOSTNAME --randomx-1gb-pages\n"
clear
echo Build complete, run \"screen -r s\" to view the console, you may need to enter a system password there!
