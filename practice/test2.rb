n=20
a=2
b=5

l=[]
n.times do |tc|
  tc+=1
  s=tc.to_s.split("").map { |s| s.to_i }.inject(:+)
  p "#{tc}: #{s}"
  l.push(tc) if s>=a && s<=b
end
if l.empty?
p l.length
else
p l.inject(:+) 
end
