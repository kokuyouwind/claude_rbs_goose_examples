# frozen_string_literal: true

module Lifegame
  class Cell
    attr_accessor :alive

    def initialize(alive: false)
      @alive = alive
    end

    def alive?
      @alive
    end
  end
end
