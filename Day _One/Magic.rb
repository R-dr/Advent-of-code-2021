Input = File.read('./input.txt')

Depths = Input.split("\n").map(&:to_i)

Total = Depths.each_cons(2).count { |a, b| b > a }

puts Total
