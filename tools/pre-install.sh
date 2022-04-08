#!/bin/bash
### update apt source
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cat > /etc/apt/sources.list <<EOF
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
EOF

touch /etc/apt/apt.conf.d/99verify-peer.conf && echo >>/etc/apt/apt.conf.d/99verify-peer.conf "Acquire { https::Verify-Peer false }"

apt update


### Install 
apt -y install curl

apt -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

apt -y install openssh-server


### SSH Init
cat >> ~/.ssh/authorized_keys <<EOF

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXoO6459Y/BzyAtozD3xwoQXtH4nBiAalqDWwWkq/xwXntVthvn79GjqsXG98WNwGqi/Q103Mcqg6/AlXm17tsUM/WE9B0E+0gMy4BS82ugDiA9p+t8JvQDq8aQsfN5ILK8CP8/cGecAU1KTzTcsXK58ScAoVViGRRwS09ECFdN4c68HEWxGC8qfHPA7CnfCnFI5cIDJlcfhavbHa3iIAVQZwfAM+8HTZX9Nw2gfynxFcNGE4zQQXlt52acN3JULkIk/i7GISD0P8gXjVXCPeX0UNIVNPhn5NoWyXlttP1/QMUHl8t25zOrRsXmeiLCEph1omGmFN3UviSvii6mCQ1YnEO0LsCv5GeE/KL8GELSuXwt1qciahz5GcbCGmlMnPqdumXaUvKJQZgzyoMhfHHCNjHBJrgnEp6BPqhLVZlyx8tVWruOYdxZRs8FPUPUHnhPK/vs4UP6yTHtQABlENOMXQJzE02RfmEKrnM6FOUQiMHa8rgKFk7fIBGqbqRSD/BDH5+Oosi/FNQeSCj+hA/rlslG+CBUU99Do5fjvpz2iBYpONXI53q+4fNHTJxwCn/srZbISF61B4WKSs7++E/bWvCDPWP4Hokafklc5PCpWq5Lk14392UJLqnTYHdFKBOWd9RCbw8vCU+VLDEkBQljz/7BWBv25hrSIYCL3Sesw==

EOF

