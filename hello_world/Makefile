test: hello.so
	yosys -m hello.so -p "hello"

hello.so: hello.cc
	yosys-config --build $@ $^

clean:
	rm -f hello.so

.PHONY: test clean