def fib(n)
  return n if n<2
  
  l = 0
  m = 1
  res = 0

  (2..n).each {
    res = l + m
    l = m
    m = res
  }

  res
end

def fib_rec(n)
  return n if n<2

  return fib_rec(n-2) + fib_rec(n-1)
end

def merge_sort(arr)
  return arr if arr.length < 2

  a1 = merge_sort(arr[0..((arr.length / 2).floor - 1)])
  a2 = merge_sort(arr[(-arr.length / 2).ceil..])

  res = []

  while a1.length.positive?
    while a2.length.positive?
      if a1[0] < a2[0]
        res << a1[0]
        a1.shift
        break
      else
        res << a2[0]
        a2.shift
      end

      res.concat a1 if a2.length.zero?
    end

    res.concat a2 if a1.length.zero?
    break if a2.length.zero?
  end

  return res
end

arr = [5, 3, 9, 2, 6, 7, 8, 1]
merge_sort(arr)