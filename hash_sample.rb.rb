members = {}

# ハッシュにキーと値を追加
members[:GK] = "前川"
members[:DF] = "菅原"
members[:MF] = "守田"
members[:FW] = "上田"

# 要素の取得
fw = members[:FW]
puts "FWは: #{fw}"

# 要素の変更
members[:FW] = "細谷"  # FW要素を置換
puts "FWの要素（置換後）: #{members[:FW]}"

# 要素の削除
puts "GKの要素（削除前）: #{members[:GK]}"
members.delete(:GK)  # GK要素を削除
puts "GKの要素（削除後）: #{members[:GK].inspect}"

# さまざまな繰り返し処理
puts "すべての要素（key, value）を取得："
members.each do |position, name|
  puts "キー: #{position}, 値: #{name}"
end

puts "キーだけ取得："
members.keys.each do |key|
  puts "キー: #{key}"
end

puts "値だけ取得："
members.values.each do |value|
  puts "値: #{value}"
end

# サイズの取得
size = members.size
puts "ハッシュのサイズ（クリア前）: #{size}"
members.clear
puts "ハッシュのサイズ（クリア後）: #{members.size}"