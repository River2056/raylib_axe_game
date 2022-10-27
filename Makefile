exe_name := game

all: run

clean:
	rm -rf ./build
	mkdir build

build: clean
	cmake -S . -B ./build
	cmake --build ./build

run: build
	./build/app/Debug/$(exe_name).exe

generate: clean
	cmake -S . -B ./build -GNinja
	cmake --build ./build
	mv ./build/compile_commands.json .
