#!/bin/bash
function ping_gb(){
 ping -q -w 1 -c 1 www.baidu.com > /dev/null && return 0 || return 1
}

if ! ping_gb; then
	curl -i -H "Usesr-Agent:'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0'" -X POST -d "action=login&username=testxg09&password={B}MTUwMzExCg==&ac_id=1&save_me=1&ajax=1" http://222.204.3.221:801/include/auth_action.php ;

else echo "connect failed";
fi
