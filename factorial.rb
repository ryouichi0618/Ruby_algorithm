# 階乗の計算

def factorial1(n)
  x = 1
  all = 1
  for i in 1..n do
    y = x * i
    all *= y
  end
  return all
end

def factorial(n)
  # 掛け算を使用しているので０は使用できない
  return 1 if n == 0
  return n * factorial(n - 1)
end
p factorial1(5)
p factorial(5)
