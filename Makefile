exe_name := game

all: run

clean:
	rm -rf ./build
	mkdir build

build: clean
	cmake -S . -B ./build -GNinja
	cmake --build ./build

copy: build
	cp ./build/compile_commands.json .

run: copy
	./build/app/$(exe_name).exe
