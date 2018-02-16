#!/bin/bash
set -v

cat /dev/urandom | hexdump -v -e '/1 "%u\n"' | awk '{ split("0,2,3,5,7,8,10,12",a,","); for (i = 0; i < 1; i+= 0.002) printf("%08X\n", 100*sin(1382*exp((a[$1 % 8]/12)*log(2))*i)) }' | xxd -r -p | padsp tee /dev/audio > /dev/null
