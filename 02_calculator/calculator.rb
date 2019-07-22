def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def sum (numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

def multiply (a, b, *c)
  result = a * b
  c.each { |x| result*=x }
  result
end

def power (a, b)
  a**b
end

def factorial1 (a)
  if a == 0
    return 0
  end
  result = 1
  while a > 1
    result*=a
    a-=1
  end
  result
end

def factorial(num)
  if num == 0
    return 0
  end
  (1..num).to_a.inject { |acc, x| acc*x}
end
