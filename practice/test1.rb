a=30
b=40
c=50
x=6000

if x%50 == 0
n=x/50
m=0
l=0
r=[]
while n>=0 do
  w=[l,m,n]
  r.push(w)
  n-=2
  m+=1
  if m >= 5
  t=m/5
  (t+1).times do |tc|
    r.push([tc, m-5*tc, n]) unless tc == 0
  end
  end
end
else
  print(0)
end

r.select!{|i| i[0]<=a && i[1]<=b && i[2]<=c }
r.select!{|i| i[0]>=0 && i[1]>=0 && i[2]>=0 }
p r
p r.count
