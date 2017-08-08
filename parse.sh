git shortlog -ns  testfile | awk -F " " '{print "['\''"$2"'\'',"$1 "], "}'
