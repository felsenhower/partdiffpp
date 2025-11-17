default:
    echo 'Hello, world!'

build:
    make

format:
    clang-format --style=file -i *.h *.cpp
