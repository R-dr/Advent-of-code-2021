Input = File.read('./input.txt')

numbers = Input.split("\n")

gamma = numbers.map(&:chars).transpose.map do |bits|
  count = bits.select.count { |bit| bit == "0" }

  if count > bits.size / 2
    "0"
  else
    "1"
  end
end

gamma = gamma.join.to_i(2)
epsilon = gamma ^ (2**12 - 1)

puts gamma * epsilon