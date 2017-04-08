def fibs(n)
  res = []
  a = 0
  b = 1
  i = 0
  until i == n
    res << a
    a, b = b, a + b
    i += 1
  end
  res
end

def fibs_rec(n, res = Array[0])
  return [] if n <= 0
  return res if n == 1
    
  if res.size == 1
    res << 1
  else
    res << res[-2] + res[-1]
  end
  
  fibs_rec(n - 1, res)
end  

p fibs_rec(15)
p fibs(15)
