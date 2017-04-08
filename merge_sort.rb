def merge(a, b, res = [])

  if b.empty?
    a.each { |i| res << i }
    return res
  end
  
  if a.empty?
    b.each { |i| res << i }
    return res
  end
  
  res.push a[0] < b[0] ? a.shift : b.shift

  merge(a, b, res)
end

def merge_sort(arr)

  return arr if arr.size <= 2
  
  a = merge_sort(arr.slice!(0, arr.size / 2))
  b = merge_sort(arr)
  a[0], a[-1] = a[-1], a[0] if a[0] > a[-1]
  b[0], b[-1] = b[-1], b[0] if b[0] > b[-1]
  
  merge(a, b)
end

#p merge_sort(10.times.inject([]) { |arr, num| arr << rand(1000) + 1 })
