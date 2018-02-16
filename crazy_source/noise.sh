#!/bin/bash
times=$1;
#repeats=$2;
amps="";
amp="&";
while [ ${times} -gt 0 ]
do
	amps=$amps$amp
	times=$((times-1))
done
#while [ ${repeats} -gt 0 ]
#do
#cat /dev/urandom | sed 's/./'$amps'/g' > /dev/dsp
cat /dev/urandom | sed 's/./'$amps'/g' | padsp tee /dev/audio > /dev/null
#done
