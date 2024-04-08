resource "time_static" "current_time"  {
    # doesn't take  any arguments, returns the current time as a string
}

resource local_file time {
  filename             = "time.txt"
    #   using the output of the previous resource
  content              = "Created time of this file was: ${time_static.current_time.id}"
}


# terraform knows which resource to create first 