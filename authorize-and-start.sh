#!/bin/sh

rwd=`dirname $0`/../../..
if [ -L "$0" ]; then
  link=`readlink $0`
  rwd=`dirname $link`/../../..
fi

find /license -name "*.prvc" -print0 | while read -d $'\0' file
do
  echo "authorizing arcgis server with ($file)"
  /arcgis/server/tools/authorizeSoftware -f $file -e agrc@utah.gov
  break
done

/arcgis/server/framework/etc/scripts/agsserver.sh start
