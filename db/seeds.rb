require "faker"
1.upto(50) do |i|
  Post.create!(body: "投稿_#{i}")
end

puts "初期データの投入に成功しました！"
