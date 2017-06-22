package check

import "fmt"

// Hoge print hoge
func Hoge() {
	fmt.Println("hoge")
	err := returnErr()
	if err != nil {
		fmt.Println(err)
	}
}

// nolint
// https://github.com/alecthomas/gometalinter#comment-directives
func NoLint() {
	fmt.Println("noLint")
}

func returnErr() error {
	return fmt.Errorf("return %s", "err")
}
