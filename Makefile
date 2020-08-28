all: hello/hello

libhello.a: c/hello.c c/hello.h
	gcc -c $< -o $@

hello/hello: hello/hello.go libhello.a c/hello.h
	cd hello; go build -ldflags '-extldflags -static'

.PHONY: clean

clean:
	rm -f hello/hello
	rm -f libhello.a
