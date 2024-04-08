resource local_file time {
    filename = "time.txt"
    content = "Created time of this file was: ${time_static.current_time.id}"
    depends_on = [ 
        time_static.current_time,
     ]
}


resource "time_static" "current_time"  {
}

