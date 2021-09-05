require "csv"
 puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 memo_type = gets.to_s.chomp


if memo_type = "1"
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtl＋Dを押します"
    
    
    memo_type = STDIN.read
    #メモ新規作成（wモード、ファイルネームに変数展開）
    CSV.open("#{file_name}.csv", "w") do |memo|
        memo << ["#{memo_type}"]
    end
    
elsif memo_type = "2"
    faile_name = gets.to_s.chomp
    puts "編集したいファイル名を入力してください"
    puts "編集内容を記入してください"
    puts "完了したらCtl＋Dを押します"
    
    memo_type = STDIN.read
    #メモ追記(aモード)
    CSV.open("#{file_name}.csv", "a") do |memo|
        memo << ["#{memo_type}"]
    end
end