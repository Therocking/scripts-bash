

httpMethod=$1
url=$2
data1=$3
data2=$4

case $httpMethod in
   "get")
      curl $url
      ;;
   "post")
      curl -d '{"$data1": "$data2"}' -H "Content-Type: application/json" -X PUT $url 
      ;;
   "put")
      curl -d '{"$data1": "$data2"}' -H "Content-Type: application/json" -X PUT $url
      ;;
    "delete")
      curl -X DELETE $url
      ;;
      *)
      echo -e "Http methods $httpMethod incorrect\n"
      ;;
esac;
