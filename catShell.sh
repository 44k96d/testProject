#!/bin/sh
find . -name "*.java" -or -name "*.cpp" -or -name "*.h" -or -name "*.c" | while read f; do
    hoge=$f;
    echo $hoge;
    cp $hoge hoge.txt;
    cat license.txt hoge.txt > $hoge;
done
