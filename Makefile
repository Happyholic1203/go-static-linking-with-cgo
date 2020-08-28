all: out

libhello.a: c/hello.c c/hello.h
	gcc -c $< -o $@

out: hello/hello.go libhello.a c/hello.h
	cd hello; go build -ldflags '-extldflags -static'; mv hello ../$@

.PHONY: clean

clean:
	rm -f out
	rm -f libhello.a
