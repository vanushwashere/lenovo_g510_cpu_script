#!/bin/bash

help="Usage: cpufreq.sh \ncpufreq.sh status - Show current status\n"

# Print help message if asked for
if [[ $1 = "-h" || $1 = "--help" ]]; then
	printf "${help}"
	exit
fi

if [[ $(id -u) -ne 0 ]] ; then
	echo "Please run as root";
	exit 1;
fi

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
