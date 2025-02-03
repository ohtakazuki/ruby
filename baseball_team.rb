class BaseballTeam
  attr_reader :name, :win, :lose, :draw

  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

  # 勝率を計算するメソッド（小数点以下3桁）
  def get_rate
    format("%.3f", @win.to_f / (@win + @lose))
  end

  # チームの勝敗情報を整った表形式で出力
  def report
    printf "%-9s %3d %4d %4d %5s\n", @name, @win, @lose, @draw, get_rate
  end
end

# 各チームのインスタンスを作成
teams = [
  BaseballTeam.new("Archers", 77, 64, 2),
  BaseballTeam.new("Meteors", 71, 69, 3),
  BaseballTeam.new("Cheetahs", 69, 68, 6),
  BaseballTeam.new("Sharks", 70, 70, 3),
  BaseballTeam.new("Pythons", 68, 73, 2),
  BaseballTeam.new("Owls", 59, 82, 2)
]

# ヘッダーを出力
puts "team      win lose draw rate"

# 各チームの成績を出力
teams.each(&:report)