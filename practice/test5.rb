n=1000
y=1234000

if y%1000==0
a=0
b=0
c=y/1000
mark=true
while c>=0 do
  w=[a,b,c]
  if w.inject(:+) == n
    p "#{w[0]} #{w[1]} #{w[2]}"
    mark=false
    break
  end
  c-=5
  b+=1
  if b >= 2
    t=b/2
    (t+1).times do |tc|
      w = [tc, b-2*tc, c] unless tc == 0
    end
  end
  if w.inject(:+) == n
    p "#{w[0]} #{w[1]} #{w[2]}"
    mark=false
    break
  end
end
p "-1 -1 -1" if mark
else
  p "-1 -1 -1"
end
