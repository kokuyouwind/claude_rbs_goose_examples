# frozen_string_literal: true

RSpec.describe Lifegame::Board do
  let(:board) { Lifegame::Board.new(3, 3) }

  describe "#next_cell_state" do
    context "with a live cell" do
      it "dies with fewer than two live neighbours" do
        board.instance_variable_get(:@cells)[1][1].alive = true
        expect(board.next_cell_state(1, 1)).to be false
      end

      it "lives with two live neighbours" do
        board.instance_variable_get(:@cells)[0][1].alive = true
        board.instance_variable_get(:@cells)[1][1].alive = true
        board.instance_variable_get(:@cells)[2][1].alive = true
        expect(board.next_cell_state(1, 1)).to be true
      end

      it "lives with three live neighbours" do
        board.instance_variable_get(:@cells)[0][0].alive = true
        board.instance_variable_get(:@cells)[0][1].alive = true
        board.instance_variable_get(:@cells)[1][0].alive = true
        board.instance_variable_get(:@cells)[1][1].alive = true
        expect(board.next_cell_state(1, 1)).to be true
      end

      it "dies with more than three live neighbours" do
        board.instance_variable_get(:@cells)[0][0].alive = true
        board.instance_variable_get(:@cells)[0][1].alive = true
        board.instance_variable_get(:@cells)[1][0].alive = true
        board.instance_variable_get(:@cells)[1][1].alive = true
        board.instance_variable_get(:@cells)[1][2].alive = true
        expect(board.next_cell_state(1, 1)).to be false
      end
    end

    context "with a dead cell" do
      it "becomes live with three live neighbours" do
        board.instance_variable_get(:@cells)[0][0].alive = true
        board.instance_variable_get(:@cells)[0][1].alive = true
        board.instance_variable_get(:@cells)[1][0].alive = true
        expect(board.next_cell_state(1, 1)).to be true
      end
    end
  end
end
