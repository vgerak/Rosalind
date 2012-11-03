s = "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"
s.scan(/.../).each do |c|
    case c
    when  /GC./
      print "A"
    when /CG.|AG[AG]/
      print "R"
    when /AA[UC]/
      print "N"
    when /GA[UC]/
      print "D"
    when /UG[UC]/
      print "C"
    when /CA[AG]/
      print "Q"
    when /GA[AG]/
      print "E"
    when /GG./
      print "G"
    when /CA[UC]/
      print "H"
    when /AU[UCA]/
      print "I"
    when /CU.|UU[AG]/
      print "L"
    when /AA[AG]/
      print "K"
    when /AUG/
      print "M"
    when /UU[UC]/
      print "F"
    when /CC./
      print "P"
    when /UC.|AG[UC]/
      print "S"
    when /AC./
        print "T"
    when /UGG/
      print "W"
    when /UA[UC]/
      print "Y"
    when /GU./
      print "V"
    end
end
