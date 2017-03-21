curl -XGET 'localhost:9200/fooindex/_search?size=10' -d '
{
"query" : {
    "match_all" : {}
  }
}'
