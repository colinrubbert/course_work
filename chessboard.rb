class Chessboard

  def initialize
    @board = [
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0]
    ]
  end

  # test indexing of row and column
  def test_board
    puts "#{@board[1][0]}#{@board[1][1]}"
  end


  # place piece on board; [piece_id = piece] [r = row] [c = column]
  def place_piece piece_id, r, c
    puts "Placing a #{piece_id} at #{r}, #{c}"
    @board[r][c]= piece_id
  end

  # move piece on board; [fr = from row] [fc = from column] [tr = to row] [tc = to column]
  def move_piece fr, fc, tr, tc
    puts "Moving X from #{fr}, #{fc} to #{tr}, #{tc}"
    current = @board[fr][fc]
    @board[fr][fc]= 0
    @board[tr][tc]=current

  end

  # output chessboard
  def output_board
    @board.each do |board|
      puts board.join
    end
  end
end


chess = Chessboard.new
chess.output_board
puts ""
chess.place_piece("Pawn", 2, 1)
puts ""
chess.output_board
puts ""
puts "Move chess piece (from row/from column) => (to row/to column)"
chess.move_piece(2, 1, 3, 1)
puts ""
chess.output_board
