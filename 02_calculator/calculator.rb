def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  sum
end

def multiply(a, *rest)
  product = a
  rest.each do |number|
    product *= number
  end
  product
end

def factorial(number)
  factorial = 1
  while number > 0
    factorial *= number
    number -= 1
  end
  factorial
end
