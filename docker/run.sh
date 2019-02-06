#!/bin/bash

_CONTENT=$(echo $1 | base64 --decode)
_FILENAME=`echo $2 | base64 --decode`
_CMD=`echo $3 | base64 --decode`

echo $_CONTENT
echo $_FILENAME
echo $_CMD

echo $_CONTENT > $_FILENAME
echo `$_CMD`
