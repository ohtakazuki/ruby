prime_numbers = []

(1..100).each do |i|
  # 素数判定の一例
  if (i == 2 || i == 3 || i == 5 || i == 7) || (i % 2 != 0 && i % 3 != 0 && i % 5 != 0 && i % 7 != 0)
    # 1は素数ではない
    prime_numbers << i unless i == 1
  end
end

prime_numbers.each do |num|
  print "#{num}, "
end
puts  # 改行
