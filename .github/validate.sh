#!/bin/bash
# commitメッセージの理想形: type(scope): description
# commitメッセージについて: https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716
# 正規表現について: https://bash.open-code.club/%E6%AD%A3%E8%A6%8F%E8%A1%A8%E7%8F%BE/index.html
MATCH="^(feat|fix|docs|style|refactor|test|chore)\([[:punct:][:alpha:]]+\):{1} [[:alnum:][:punct:]]+$"
echo "title: ${1}"
echo "match: ${MATCH}"
if [[ $1 =~ $MATCH ]]; then
    export VALIDATE_RESULT="T"
else
    export VALIDATE_RESULT="F"
fi

