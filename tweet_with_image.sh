OUT=$(twurl -X POST -H upload.twitter.com "/1.1/media/upload.json" -f computermalfunction.jpg -F media | jq .media_id_string)
OUT=${OUT/\"/}
OUT=${OUT/\"/}
echo ${OUT}
twurl "/1.1/statuses/update.json" -d "media_ids=${OUT}&status=Computer malfunction"
#
#if you have jq installed you can beauty the output
#twurl "/1.1/statuses/update.json" -d "media_ids=${OUT}&status=Computer malfunction" | jq
