package bridge

// #cgo CFLAGS: -I../c
// #cgo LDFLAGS: /home/xcenter/go-static-linking/libhello.a
// #include "hello.h"
import "C"

func Run() {
	C.hello()
}
