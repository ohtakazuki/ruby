# 1つ目のメソッド（戻り値なし）
def sum_method1(num1, num2)
  result = num1 + num2
  puts "sumMethod1の結果は#{result}"
end

# 2つ目のメソッド（戻り値あり）
def sum_method2(num1, num2)
  result = num1 + num2
  return result
end

# メインの処理部分
number1 = 100
number2 = 10

# メソッドを呼び出して実行（戻り値なし）
sum_method1(number1, number2)

# メソッドを呼び出して実行（戻り値あり）
result2 = sum_method2(number1, number2)
puts "sumMethod2の結果は#{result2}"