echo $(cat owsq.txt | grep -o "uin.*" | cut -d '&' -f1 | cut -d '=' -f2) > ou.txt && echo $(cat owsq.txt | grep -o "key.*" | cut -d '&' -f1 | cut -d '=' -f2) > key.txt && echo $(cat owsq.txt | grep -o "version.*" | cut -d '&' -f1 | cut -d '=' -f2) > ov.txt && echo $(cat owsq.txt | grep -o "pass_ticket.*" | cut -d ' ' -f1 | cut -d '=' -f2) > op.txt && echo $(cat ck.txt | grep -o "udtauth3.*") > cku.txt && if [ $(grep -c ";" cku.txt) -eq 1 ]; then echo $(cat cku.txt | cut -d ';' -f1) > cku.txt; fi && cku=$(cat cku.txt) && if [ ! -n "$cku" ]; then rm -rf cku.txt; fi && if [ $(grep -c "PHPSESSID=" ckP.txt) -eq 0 ]; then dt=$(date '+%Y-%m-%d %H:%M:%S') && echo $dt 常量里未查找到 PHPSESSID= ，请检查常量，重启脚本重新输入常量 > ckerror.txt; fi
