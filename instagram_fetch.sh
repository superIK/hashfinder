#!/bin/bash
for run in {1..60}
do
 curl -sL 'https://api.instagram.com/v1/tags/snow/media/recent?access_token=1549208576.dd99346.d7f8f2f6b0964562ad7330b662bdfdbf' > hash.txt
 content=`cat hash.txt`
 echo $content
 curl -v -XPOST http://127.0.0.1:10018/riak/instagram -H 'Content-Type: text/plain' \  -d "$content"
 sleep 1
done