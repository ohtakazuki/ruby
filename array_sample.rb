places = ["アイスランド", "スペイン", "ナポリ", "リスボン", "ヨセミテ国立公園"]

# ブロックを使った繰り返し（each）
places.each do |place|
  puts place
end

# mapを使って各要素を加工
new_places = places.map do |place|
  "#{place}（長さ: #{place.size}）"
end

puts new_places
