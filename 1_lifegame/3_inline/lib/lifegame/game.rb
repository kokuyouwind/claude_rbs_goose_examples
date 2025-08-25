# frozen_string_literal: true
# rbs_inline: enabled

module Lifegame
  class Game
    # @rbs @width: Integer
    # @rbs @height: Integer
    # @rbs @board: Board

    # @rbs width: Integer -- Width of the game board
    # @rbs height: Integer -- Height of the game board
    # @rbs return: void
    def initialize(width: 10, height: 10)
      @width = width
      @height = height
      @board = Board.new(@width, @height)
      @board.randomize
    end

    # @rbs return: void
    def run
      loop do
        @board.display
        @board.update
        sleep 1
      end
    end
  end
end
