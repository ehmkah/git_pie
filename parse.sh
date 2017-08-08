git shortlog -ns  testfile | awk -F " " '{print "['\''"$2" "$3" "$4" "$5"'\'',"$1 "], "}'
