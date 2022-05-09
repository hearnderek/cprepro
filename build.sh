#!/bin/bash

if [ -d "./build" ]
then
    rm -r "./build"
fi

mkdir "./build"

clang -E './src/hello.c' > './build/hello.i'
echo hello 03
time clang -O3 './src/hello.c' -o './build/hello' # && ./build/hello
echo hello 00
time clang -O0 './src/hello.c' -o './build/hello' # && ./build/hello


clang -E './src/nocomments.c' > './build/nocomments.i'
clang -S -O3 './src/nocomments.c' -o './build/nocomments.s'

echo nocomments 03
time clang -O3 './src/nocomments.c' -o './build/nocomments' # && cat ./src/nocomments.c | ./build/nocomments
echo nocomments 00
time clang -O0 './src/nocomments.c' -o './build/nocomments' # && cat ./src/nocomments.c | ./build/nocomments


clang -E './src/nopreprocessor.c' > './build/nopreprocessor.i'
clang -S -O3 './src/nopreprocessor.c' -o './build/nopreprocessor.s'
echo nopreprocessor 03
time clang -O3 './src/nopreprocessor.c' -o './build/nopreprocessor' # && cat ./src/nopreprocessor.c | ./build/nopreprocessor
echo nopreprocessor 00
time clang -O0 './src/nopreprocessor.c' -o './build/nopreprocessor' # && cat ./src/nopreprocessor.c | ./build/nopreprocessor
