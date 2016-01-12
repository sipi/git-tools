# seqfilter - Sequence Filter
# See LICENCE file for copyright and licence details.

include config.mk

filename=git-status

all:

install: all
	@echo  installing executable file to ${PREFIX}/bin
	@mkdir -p ${PREFIX}/bin
	@cp -f src/${filename}.sh ${PREFIX}/bin/${filename}
	@chmod 755 ${PREFIX}/bin/${filename}
