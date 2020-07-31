#!bin/bash
#更新
apt-get update
#安装必要环境
apt-get install git make cmake gcc g++ doxygen python -y
#安装OpenCC
cd /usr/local
git clone https://github.com/BYVoid/OpenCC.git --depth 1
cd OpenCC
make
make install
#64位支持
#ln -s /usr/lib/libopencc.so.2 /usr/lib64/libopencc.so.2
cd ..
#安装opencc4php
git clone https://github.com/nauxliu/opencc4php --depth 1
#禁用proc_open函数
sed -i "s/proc_open,/ /g" /usr/local/php/etc/php.ini
#重新加载PHP
#lnmp php-fpm reload
#开始编译安装
cd opencc4php
/usr/local/php/bin/phpize
./configure --with-php-config=/usr/local/php/bin/php-config
make
#make test
make install
#添加拓展支持
cat >/usr/local/php/conf.d/009-opencc.ini<<EOF
[opencc]
extension = opencc.so
EOF
#重启LNMP
lnmp restart
