def fibs(n)
  result = [0, 1]
  return result = [0] if n < 2

  (n - 2).times do
    result << (result[-1] + result[-2])
  end
  result
end

p fibs(8)

def fibs_rec(n, result = [0, 1])
  if n == 0
    result = [0]
  elsif n == 1
    result = [0, 1]
  elsif result.size == n
    result
  else
    result << (result[-1] + result[-2])
    fibs_rec(n, result)
  end
end

p fibs_rec(1)
