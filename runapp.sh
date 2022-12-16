echo 'killing PID on port 3000 if already exists'
var=`lsof -Fp -i:3000 | head -n 1`
if [ ! -z "$var" ]; then kill -9 ${var##p}; fi
sudo apt-get update
sudo apt-get install python3-pip -y
pip3 install -r requirements.txt
nohup python3 main.py > app_log.txt &
