package main

import (
	"net/http"
)

func handleRoot(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "./index.html")
}

func main() {
	http.HandleFunc("/", handleRoot)
	http.ListenAndServe(":80", nil)
}
