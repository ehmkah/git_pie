git blame $1 | cut -f2 -d " " | sort | uniq -c | sed 's/(//' | awk -F " " '{print "['\''"$2" "$3" "$4" "$5"'\'',"$1 "], "}'
