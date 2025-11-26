@default:
    just --list

build:
    make

format:
    clang-format --style=file -i *.cpp *.hpp
