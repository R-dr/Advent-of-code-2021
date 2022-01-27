Input = File.read('./input.txt')

Depths = Input.split("\n").map(&:to_i)

Total = Depths.each_cons(4).count { |a, b, c, d| (b + c + d) > (a + b + c) }

puts Total
