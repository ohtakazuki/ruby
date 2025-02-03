puts "処理開始"

begin
  puts "割り算開始"
  a = divide(10, 0)
  puts a
rescue ZeroDivisionError => e
  puts "ZeroDivisionErrorが発生: #{e.message}"
ensure
  puts "割り算終了"
end

puts "処理終了"

def divide(x, y)
  if y == 0
    # 0で割る場合は明示的に例外を起こす
    raise ZeroDivisionError, "ゼロ除算エラーです"
  end
  x / y
end