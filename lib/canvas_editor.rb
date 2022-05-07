class CanvasEditor

  def initialize
    @exit = false
  end

  def new_canvas
    until @exit == true do
      input = gets.chomp
      input_arr = input.split
        
      if input_arr[0] == "I"
        @grid = []
        width = input_arr[1].to_i
        height = input_arr[2].to_i

        row = "O" * width
          
        until @grid.length == height 
          @grid << row
        end
        @grid
      elsif input_arr[0] == "S"
        display_canvas
      elsif input_arr[0] == "X"
        terminate
      end
    end
  end

  def display_canvas 
      puts @grid
  end

  def terminate
    @exit = true
  end

end



# def paint_pixels
# elsif (input_arr[0] == "L")
#   p @grid
#   x_cordinate = input_arr[1]
#   y_cordinate = input_arr[2]
#   colour = input_arr[3]

#   @grid 

#   # grid_array[x_cordinate][y_cordinate] = colour
# end