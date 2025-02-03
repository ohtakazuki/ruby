matrix = Array.new(3) { Array.new(4) }  # 3×4の2次元配列を作成

# 2次元配列へのアクセスと代入
(0...matrix.size).each do |i|
  (0...matrix[i].size).each do |j|
    matrix[i][j] = i * 3 + j + 1
  end
end

# 2次元配列の要素を表示
(0...matrix.size).each do |i|
  (0...matrix[i].size).each do |j|
    print "#{matrix[i][j]} "
  end
  puts
end
