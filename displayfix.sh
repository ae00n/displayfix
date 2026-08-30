#!/bin/bash
DP=/opt/homebrew/bin/displayplacer
WANT="3BFC1E36-6297-48C4-8B4C-0FCA37332F1E"
sleep 4
main=$($DP list | awk '/^Persistent screen id:/{id=$4} /main display/{print id; exit}')
[ "$main" = "$WANT" ] && exit 0
$DP "id:3BFC1E36-6297-48C4-8B4C-0FCA37332F1E res:2560x1440 hz:165 color_depth:8 enabled:true scaling:off origin:(0,0) degree:0" "id:FBD30628-324B-4DFA-8C9B-74460BF1586F res:2560x1440 hz:144 color_depth:8 enabled:true scaling:off origin:(-2560,0) degree:0"
