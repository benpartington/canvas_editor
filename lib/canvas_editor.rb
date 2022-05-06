def canvas_editor
  exit = false
  until exit == true do
      input = gets.chomp
      input_arr = input.split
      grid = []

      if input_arr[0] == "I"
        width = input_arr[1].to_i
        height = input_arr[2].to_i

        row = "O" * width + "\n"
        grid = row * height
        puts grid #this should actually be the 'S' command, not part of this function

      elsif (input_arr[0] == "L")
        x_cordinate = input_arr[1]
        y_cordinate = input_arr[2]
        colour = input_arr[3]

        grid_array[x_cordinate][y_cordinate] = colour



      elsif input == "X" 
        exit = true
      end
  end
end

canvas_editor