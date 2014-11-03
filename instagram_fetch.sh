#!/bin/bash
echo "Starting to fetch JSON-files from Instagram"
for run in {1..60}
do
 curl -sL 'https://api.instagram.com/v1/tags/snow/media/recent?access_token=1549208576.dd99346.d7f8f2f6b0964562ad7330b662bdfdbf' > hash.txt
 content=`cat hash.txt`
 curl -XPOST http://127.0.0.1:10018/riak/instagram -H 'Content-Type: text/plain' \  -d "$content" -s
 sleep 1
 echo "Fetched one new JSON from Instagram........"
done
echo "Done fetching data....."
echo ""
echo "To list all Keys in the bucket use this comand:"
echo "curl 'localhost:10018/buckets/instagram/keys?keys=true'"
echo ""
echo "To see data from a key use the following command:"
echo "curl -v http://127.0.0.1:10018/riak/instagram/KEY"
echo ""
