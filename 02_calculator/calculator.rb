#write your code here

def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(a)
    #a = []
    res = a.reduce(0){ |total, number| total + number}
    return res
end

def multiply(*a)
    res = 1
  
    a.each do |b|
      res *= b
    end
    return res
  end

def power(a,b)
    a ** b
end

def factorial(a)
    if a == 0
        1
    else
        a * factorial(a-1)
    end
end

puts add(0,0)
puts add(2,2)
puts add(2,6)
puts subtract(10,4)
puts sum([])
puts sum([7])
puts sum([7,11])
puts sum([1,2,3,4,5,6,7])
puts multiply(3,2)
puts multiply(3,4,5)
puts power(3,3)
puts factorial(0)
puts factorial(1)
puts factorial(2)
puts factorial(5)
puts factorial(10)