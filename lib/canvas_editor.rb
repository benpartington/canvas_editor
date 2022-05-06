def canvas_editor
  exit = false
  until exit == true do
      input = gets.chomp
      new_arr = input.split

      if new_arr[0] == "I"
        width = new_arr[1].to_i
        height = new_arr[2].to_i

        a_row = "O" * width + "\n"
        puts a_row * height

        
      elsif input == "X" 
        exit = true
      end
  end
end

canvas_editor