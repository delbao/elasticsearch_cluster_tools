curl -XPUT 'localhost:14900/autoscaling_test/_settings?pretty' -H 'Content-Type: application/json' -d' { "index" : { "number_of_replicas" : 3 } } '
