package message

import (
	"testing"
)

// TestGreeting provides a working example of a "table", or parameterized, test.
// In this case the test is simple so our table is a simple map, rather than a struct.
func TestGreeting(t *testing.T) {

	tests := map[string]string{
		"Homer":  "Hello, Homer!",
		"Marge":  "Hello, Marge!",
		"Bart":   "Hello, Bart!",
		"Lisa":   "Hello, Lisa!",
		"Maggie": "Hello, Maggie!",
	}

	for name, want := range tests {
		t.Run(name, func(t *testing.T) {
			got := Greeting(name)

			if want != got {
				t.Errorf("want: %s, got: %s", want, got)
			}
		})
	}
}
