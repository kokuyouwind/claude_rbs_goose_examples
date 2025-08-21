# frozen_string_literal: true

RSpec.describe Lifegame::Cell do
  describe "#initialize" do
    it "is dead initially" do
      cell = Lifegame::Cell.new
      expect(cell.alive?).to be false
    end

    it "can be born alive" do
      cell = Lifegame::Cell.new(alive: true)
      expect(cell.alive?).to be true
    end
  end
end
