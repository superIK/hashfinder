#/bin/bash
rm counted_hash.txt



while read p; do
	echo "$p,$(grep -o -c "$p" tags.txt)" >>counted_hash.txt
done <tags.txt
cat counted_hash.txt | sort -gru
