#!/bin/bash

if [ "$#" -ne 1  ] ; then
	echo "changed to performance"
	modprobe msr
	wrmsr 0x1FC 2
	exit;
fi

if [ "$1" == "status"  ] ; then
	modprobe msr
	rdmsr 0x1FC
	exit;
fi

if [[ ("$1" == 1) || ("$1" == 2 ) ]] ; then
	modprobe msr
	wrmsr 0x1FC "$1"
fi

exit;
