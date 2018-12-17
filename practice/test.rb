#a=gets.to_i
#b=gets.chomp.split(" ").map(&:to_i);
b = [12,40, 8]
mark=true
c = 0
while(mark) do 
b.each_with_index do |num, i|
  if num%2==0
    b[i] = num/2
  else
    mark=false
    break
  end
end
c+=1 if mark
end
print(c)
