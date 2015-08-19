# 整数

# Crystalには4つの整数型があります: Int8, Int16, Int32, Int64
# それぞれ8, 16, 32, 64ビットの数を表現することができます。
# また、4種類の符号なし整数型があります: UInt8, UInt16, UInt32, UInt64

puts 1.class      # Int32

puts 1_i8.class   # Int8
puts 1_i16.class  # Int16
puts 1_i32.class  # Int32
puts 1_i64.class  # Int64

puts 1_u8.class   # UInt8
puts 1_u16.class  # UInt16
puts 1_u32.class  # UInt32
puts 1_u64.class  # UInt64

+10    # Int32
-20    # Int32

puts 2147483648.class          # Int64
puts 9223372036854775808.class # UInt64

# アンダースコアをつけることで、整数の可読性が上がります。
puts 1_000_000 # better than 1000000
