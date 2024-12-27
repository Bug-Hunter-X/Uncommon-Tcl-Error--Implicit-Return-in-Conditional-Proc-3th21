proc goodproc {x} {
  if {$x > 10} {
    return 1
  } else {
    return 0
  }
}

puts [goodproc 20]
puts [goodproc -1]