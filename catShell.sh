#!/bin/sh
find . -name "*.java" -or -name "*.cpp" -or -name "*.h" -or -name "*.c" | while read f; do
    hoge=$f;
    echo $hoge;
    cp $hoge hoge.txt;
    cat license.txt hoge.txt > $hoge;
    svn propset svn:mime-type "text/plain; charset=utf-8" $hoge
done
//d.hatena.ne.jp/billiejoe/20091001 を参考にフォルダにセットしてもよい
