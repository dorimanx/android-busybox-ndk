#!/bin/sh

#We need full compiler including the *.o files! as they used to finish the build for static busybox.
#If compiler is in GIT directory then all *.o files are deleted in make clen command.
make -j16
if [ -f busybox ]; then
	CC_STRIP=Android-ToolChain/bin/aarch64-OP3T-linux-gnu-strip
	$CC_STRIP --strip-unneeded busybox
	$CC_STRIP --strip-debug busybox
fi;
