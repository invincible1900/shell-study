# sed -i 's/要被取代的字串/新的字串/g'
# sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
# 
# 
# sed -i 's,要被取代的字串,新的字串,' 目标文件
# sed -i 's,Listen 80,Listen 80\nListen 8080,' /etc/apache2/ports.conf


# 从ifconfig中获取ip地址
#$ ifconfig en0
#en0: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500
#	ether 38:f9:d3:70:50:79
#	inet6 fe80::18bf:ce5c:33c8:a973%en0 prefixlen 64 secured scopeid 0x6
#	inet 192.168.8.195 netmask 0xffffff00 broadcast 192.168.8.255
#	nd6 options=201<PERFORMNUD,DAD>
#	media: autoselect
#	status: active
	
ifconfig | grep -w 'inet' | sed 's/^.*inet //g' | sed 's/ netmask.*$//g'


