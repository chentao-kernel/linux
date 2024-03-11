#!/bin/bash

op=$1
patch=$2

case $op in
	1)
		echo "check my patch format"
		./scripts/checkpatch.pl $patch
		;;
	2)
		./scripts/get_maintainer.pl $patch
		echo "get my patch maintainer info"
		;;
	3)
		echo "send my patch"
		git send-email --to "chen.dylane@gmail.com" $patch
		#git send-emial --to "" --to "" \
		#	--cc "linux-kernel@vger.kernel.org" $patch
		;;
esac
