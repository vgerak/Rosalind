#!/Users/indoril/.rvm/bin//ruby
p ARGV[0].gsub(/[ATCG]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C").reverse