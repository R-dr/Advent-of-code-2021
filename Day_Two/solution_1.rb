Input = File.read('./input.txt')

locations = Input.split("\n")

depth = 0

horizontal = 0



locations.each do |location|

  direction, bearing = location.split



  bearing = bearing.to_i



  case direction

  when 'forward'

    horizontal += bearing

  when 'down'

    depth += bearing

  when 'up'

    depth -= bearing

  end

end

pp depth, horizontal

pp depth * horizontal

