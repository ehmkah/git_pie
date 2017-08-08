git blame testfile | cut -f2 -d " " | sort | uniq -c | sed 's/(//'
