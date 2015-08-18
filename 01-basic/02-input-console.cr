# コンソールから入力したい

# コンソールから1行入力する
print "Please input your name: "
STDOUT.flush

# chompは文字列末尾の\nを取り除く
name = gets.to_s.chomp

# 入力した値を使用してメッセージを出力
puts "Hello #{name}!"


# 数値をコンソールから入力する
print "Please input your age: "
STDOUT.flush
age = gets.to_i
puts "You are #{age} years old."
# Note: 数値以外の入力があると、ArgumentErrorが発生します。
