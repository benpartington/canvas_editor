class CanvasEditor

  def initialize
    @exit = false
    menu
  end

  def menu 
    until @exit == true do
      input = gets.chomp
      @input_arr = input.split
      
      if @input_arr[0] == "I"
        new_canvas
      elsif @input_arr[0] == "L" 
        paint_pixels  
      elsif @input_arr[0] == "S"
        display_canvas
      elsif @input_arr[0] == "X"
        terminate
      end
    end
  end

  def new_canvas
    @grid = []
    width = @input_arr[1].to_i
    height = @input_arr[2].to_i

    row = "O" * width
      
    until @grid.length == height 
      @grid << row
    end
  end

  def paint_pixels
    x = @input_arr[1].to_i
    y = @input_arr[2].to_i
    colour = @input_arr[3]

    @grid[y - 1][x - 1] = colour 
  
  end

  def display_canvas 
    puts @grid
  end

  def terminate
    @exit = true
  end

end

CanvasEditor.new



