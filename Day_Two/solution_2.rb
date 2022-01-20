Input = File.read('./input.txt')

locations = Input.split("\n")

depth = 0

horizontal = 0
aim = 0



locations.each do |location|

  direction, bearing = location.split



  bearing = bearing.to_i



  case direction

  when 'forward'

    horizontal += bearing
    depth += aim * bearing
  when 'down'

    aim += bearing


  when 'up'

    aim -= bearing

  end

end

pp depth, horizontal, aim

pp depth * horizontal

