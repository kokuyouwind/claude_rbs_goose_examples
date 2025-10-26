# frozen_string_literal: true

module Lifegame
  class Board
    def initialize(width, height)
      @width = width
      @height = height
      @cells = Array.new(@height) { Array.new(@width) { Cell.new } }
    end

    def randomize
      @cells.each do |row|
        row.each do |cell|
          cell.alive = [true, false].sample
        end
      end
    end

    def display
      system "clear"
      puts @cells.map { |row| row.map { |cell| cell.alive? ? "██" : "  " }.join }.join("\n")
    end

    def update
      new_cells = Array.new(@height) { Array.new(@width) { Cell.new } }
      @height.times do |y|
        @width.times do |x|
          new_cells[y][x].alive = next_cell_state(x, y)
        end
      end
      @cells = new_cells
    end

    def next_cell_state(x, y)
      alive_neighbors = count_alive_neighbors(x, y)
      if @cells[y][x].alive?
        [2, 3].include?(alive_neighbors)
      else
        alive_neighbors == 3
      end
    end

    def count_alive_neighbors(x, y)
      count = 0
      (-1..1).each do |dy|
        (-1..1).each do |dx|
          next if dx.zero? && dy.zero?

          nx = x + dx
          ny = y + dy
          if nx.between?(0, @width - 1) && ny.between?(0, @height - 1) && @cells[ny][nx].alive?
            count += 1
          end
        end
      end
      count
    end
  end
end
