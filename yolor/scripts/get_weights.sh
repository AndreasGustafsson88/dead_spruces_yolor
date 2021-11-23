curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=1-pHXeW7f2eUAuPbHiaKH8IvreD1fwIXg" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=1-pHXeW7f2eUAuPbHiaKH8IvreD1fwIXg" -o best_overall.pt
rm ./cookie
