# frozen_string_literal: true
# rbs_inline: enabled

module Lifegame
  class Cell
    # @rbs @alive: bool
    attr_accessor :alive

    # @rbs alive: bool
    # @rbs return: void
    def initialize(alive: false)
      @alive = alive
    end

    # @rbs return: bool
    def alive?
      @alive
    end
  end
end
