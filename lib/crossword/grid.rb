module Crossword
  class Grid
    attr_reader :cells

    def initialize(width, height=width)
      raise GridError, "Height and width must be numbers greater than 0" \
        if width.to_i <= 0 || height.to_i <= 0

      @cells = []
      height.times do |x|
        width.times do |y|
          @cells.push(Cell.new(x, y))
        end
      end
    end

    class GridError < StandardError; end
  end
end
