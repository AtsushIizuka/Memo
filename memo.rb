require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
  puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
 memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
input_number = memo_type
 
 # if文を使用して続きを作成していきましょう。
 if input_number==1
     puts "拡張子を除いたファイルを入力してください"
     file_name=gets.chomp
     puts "メモしたい内容を記入してください"
     puts "完了したらCtr＋Dを押します"
     memo = STDIN.read
     CSV.open("#{file_name}.csv" , "w") do |csv|
  csv.puts ["#{memo}"]
  end
 elsif input_number==2
     puts "拡張子を除いた既存のファイルを入力してください"
     file_name=gets.chomp
     puts "編集内容を入力してください"
     puts "完了したらCtr＋Dを押します"
     memo = STDIN.read
     CSV.open("#{file_name}.csv" , "a") do |csv|
         csv.puts ["#{memo}"]
 end
 end