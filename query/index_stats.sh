# output: http://pastebin.com/cheVVXsi 
curl http://localhost:14900/biz_dup_queue_v2/_stats/ | jq '.["indices"]["biz_dup_queue_v2"]["total"]["get"]'
curl http://localhost:14900/biz_dup_queue_v2/_stats/ | jq '.["indices"]["biz_dup_queue_v2"]["primaries"]["search"]'
