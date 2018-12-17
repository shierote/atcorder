t=gets.to_i
n=gets.chomp.split(" ").map(&:to_i);
n.sort! {|a, b| b <=> a }
n1=n.select.with_index{|e, i|
  i % 2 == 1
}
n2=n.select.with_index{|e, i|
  i % 2 == 0
}
p n2.inject(:+)-n1.inject(:+)
