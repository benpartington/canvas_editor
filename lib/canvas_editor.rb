def canvas_editor
  exit = false
  until exit == true do
      input = gets.chomp

      if input[0] == "I"
        width = input[2].to_i
        height = input[4].to_i

        a_row = "O" * width + "\n"
        puts a_row * height

        
      elsif input == "X" 
        exit = true
      end
  end
end

canvas_editor