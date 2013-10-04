require'pry'


#Below is a method for calculating the Fibonacci Sequence into an Array 

def fib(x)
a = []
  x.times do |i|
    if i == 0
      a[i] = 0
    elsif i==1
      a[i] = 1
    else
    a[i] = a[i-1] + a[i-2]
    end  
  end

  return a
end

#binding.pry 



