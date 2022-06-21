#!/bin/bash
cat << EOF > x.gdb
set \$loaded = 1
set arch i386:x86-64
file vmlinux
target remote :1234
set disassembly-flavor intel
display/5i \$pc
EOF

gdb -x x.gdb
rm x.gdb
