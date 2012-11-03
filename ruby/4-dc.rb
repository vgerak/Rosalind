s = <<-INPUT
>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT
INPUT

k = s.split
j = -1

counted = Array.new(0)
lengths = Array.new(0)
names = Array.new

k.each do |l|
    if l.match(/>/)
        j += 1
        names[j] = l.sub(/[>]/, "").strip
    else
        if counted[j] == nil
            lengths[j] = l.length
            counted[j] = (l.count("C") + l.count("G"))
        else
            lengths[j] += l.length
            counted[j] += (l.count("C") + l.count("G"))
        end
    end
end

name = ""
max = 0
counted.each_with_index do |c, i|
    if (counted[i]*1.0/lengths[i]) > max
        max = counted[i] * 1.0 / lengths[i]
        name = names[i]
    end
end
puts name, "%0.6f%" % (max*100)

#puts name
#puts "counted = ", counted
#puts "length = ",  lengths
