class TicTacToe

  def initialize (board = nil)
      @board = board || Array.new(9, " ")
    end

WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2],
    ]

  def display_board
      lineOne = " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      lineTwo = "-----------"
      lineThree = " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      lineFour = " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      puts lineOne
      puts lineTwo
      puts lineThree
      puts lineTwo
      puts lineFour
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, player = "X")
    @board[index] = player
  end

  def position_taken?(location)
    @board[location] != " " && @board[location] != ""
  end

  def valid_move?(index)
  if index.between?(0,8) && !position_taken?(index)
    return true
  else
    false
  end
  end

  def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    move(index, current_player)
    else
      turn
    end
  display_board
  end

end
