package bridge

// #cgo CFLAGS: -I../c
// #cgo LDFLAGS: ${SRCDIR}/../libhello.a
// #include "hello.h"
import "C"

func Run() {
	C.hello()
}
