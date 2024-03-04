GCC=g++
OPTIONS=-g -std=c++17 -pedantic -Wall -Wextra -Werror -Wshadow -Wconversion -Wunreachable-code
COMPILE=$(GCC) $(OPTIONS)
BUILD=build

all: build hello

build:
	mkdir -p $(BUILD)

hello: src/hello.cpp
	$(COMPILE) src/hello.cpp -o $(BUILD)/hello

clean:
	rm -f hello
	rm -fr build