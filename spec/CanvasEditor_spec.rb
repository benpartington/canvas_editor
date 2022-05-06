require_relative '../lib/CanvasEditor'

describe 'Canvas Editor' do
  before{ @canvas = CanvasEditor.new } 

  describe '#new_canvas' do
    it 'creates a blank canvas measuring 5 x 3' do
      expect(@canvas.new_canvas("I", 5, 3)).to eq(
        "00000\n00000\n00000"
      )
    end
  end
end