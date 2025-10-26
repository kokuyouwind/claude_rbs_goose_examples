# frozen_string_literal: true

module Lifegame
  class Game
    def initialize(width: 10, height: 10)
      @width = width
      @height = height
      @board = Board.new(@width, @height)
      @board.randomize
    end

    def run
      loop do
        @board.display
        @board.update
        sleep 1
      end
    end
  end
end
