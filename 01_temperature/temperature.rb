#write your code here

def ftoc (t_f)
    (t_f - 32) * 5/9.0
end  

def ctof (t_c)
    t_c * 9/5.0 + 32
end

puts ftoc(32) #should be 0
puts ftoc(212) #should be 100
puts ftoc(98.6) #should be 37
puts ftoc(68) #should be 20
puts ctof(0) #should be 32
puts ctof(100) #should be 212
puts ctof(20) #should be 68
puts ctof(37) #should be 98.6


