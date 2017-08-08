./parse_blame.sh $1 > inputForDiagram.txt
cat front.html inputForDiagram.txt back.html > finish.html

open finish.html
