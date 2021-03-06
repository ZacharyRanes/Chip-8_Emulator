INCLUDES= -I ./include
FLAGS= -g
LIBRARIES= `sdl2-config --cflags --libs`
OBJECTS= ./build/chip8.o ./build/chip8memory.o ./build/chip8stack.o ./build/chip8keyboard.o ./build/chip8screen.o

all: ${OBJECTS}
	mkdir -p bin
	gcc ${FLAGS} ${INCLUDES} ./src/main.c ${OBJECTS} ${LIBRARIES} -o ./bin/main

./build/chip8.o:src/chip8.c
	mkdir -p build
	gcc ${FLAGS} ${INCLUDES} ./src/chip8.c -c -o ./build/chip8.o

./build/chip8memory.o:src/chip8memory.c
	mkdir -p build
	gcc ${FLAGS} ${INCLUDES} ./src/chip8memory.c -c -o ./build/chip8memory.o

./build/chip8stack.o:src/chip8stack.c
	mkdir -p build
	gcc ${FLAGS} ${INCLUDES} ./src/chip8stack.c -c -o ./build/chip8stack.o

./build/chip8keyboard.o:src/chip8keyboard.c
	mkdir -p build
	gcc ${FLAGS} ${INCLUDES} ./src/chip8keyboard.c -c -o ./build/chip8keyboard.o

./build/chip8screen.o:src/chip8screen.c
	mkdir -p build
	gcc ${FLAGS} ${INCLUDES} ./src/chip8screen.c -c -o ./build/chip8screen.o

clean:
	rm build/*