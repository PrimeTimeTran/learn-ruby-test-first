def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  total = 0
  if array.empty?
    0
  elsif array.count == 1
    array.first
  else
    array.each do |num|
      total = total + num
    end

  return total

  end
end

def multiply(array)
  total = 1
  array.each do |num|
    total = total * num
  end
  return total
end

def power(first, second)
  times = second
  total = 1
  until times == 0
    total = total * first
    times -= 1
  end
  return total
end


def factorial(num)
  if num == 0
    0
  elsif num == 1
    1
  elsif num == 2
    return 2
  else
    times = num - 1
    total = num
    until times == 0
      total = total * times
      times -=1
    end
    return total
  end
end
