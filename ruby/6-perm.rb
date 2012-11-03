s = (1..Integer(ARGV[0])).to_a.permutation.map {|s| s.join(" ")}
puts s.length, s