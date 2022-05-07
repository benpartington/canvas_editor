class CanvasEditor

  def initialize
    @exit = false
    menu
  end

  def menu #change to 'controller' or 'menu'
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

    @grid
  end

  def paint_pixels
    x = @input_arr[1]
    y = @input_arr[2]
    colour = @input_arr[3]

    @grid[y.to_i - 1][x.to_i - 1] = colour 
  
  end

  def display_canvas 
    puts @grid
  end

  def terminate
    @exit = true
  end

end

CanvasEditor.new



