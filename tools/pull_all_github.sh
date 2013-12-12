#!/bin/bash 
#
#
Error() {
	echo "$@"
	exit 1
}
test -z "$GOPATH" && Error "GOPATH not set"

cd $GOPATH/src/github.com/shxsun
ls | while read folder
do
	test -d $folder/.git || continue
	cd $folder || continue
	echo "Process $folder ..."
	git pull
	cd ..
done
