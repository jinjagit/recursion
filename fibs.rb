def fibs(n) # iterative
  if n == 0
    return [0]
  elsif n == 1
    return [0, 1]
  else
    ary = [0, 1]
    (n - 1).times do
      ary << ary[-1] + ary[-2]
    end
    return ary
  end
end

def fibs_rec(n, ary = [0, 1]) # recursive
  return ary = [0] if n == 0
  return ary = [0, 1] if n == 1
  ary = fibs_rec(n - 1, ary)
  ary << ary[-1] + ary[-2]
end

p fibs 0
p fibs 1
p fibs 10

p fibs_rec 0
p fibs_rec 1
p fibs_rec 10
