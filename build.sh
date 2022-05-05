#!/bin/bash

if [ -d "./build" ]
then
    rm -r "./build"
fi

mkdir "./build"

clang -E './src/hello.c' > './build/hello.i'
clang -v -O3 './src/hello.c' -o './build/hello' && ./build/hello


clang -E './src/nocomments.c' > './build/nocomments.i'
clang -S -O3 './src/nocomments.c' -o './build/nocomments.s'
clang -v -O3 './src/nocomments.c' -o './build/nocomments' && cat ./src/nocomments.c | ./build/nocomments


clang -E './src/nopreprocessor.c' > './build/nopreprocessor.i'
clang -S -O3 './src/nopreprocessor.c' -o './build/nopreprocessor.s'
clang -v -O3 './src/nopreprocessor.c' -o './build/nopreprocessor' && cat ./src/nopreprocessor.c | ./build/nopreprocessor
