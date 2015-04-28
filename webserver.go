package main

import (
  "log"
  "net/http"
)

func main() {
  fs := http.FileServer(http.Dir("/data"))
  http.Handle("/", fs)

  log.Println("Listening...")
  http.ListenAndServe(":80", nil)
}
