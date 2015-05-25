class Player
  attr_accessor :name, :moves, :score

  def initialize name
    @name = name
    @moves
    @score = 0

  end

  def prompt letter, taken_moves
    puts "#{@name}, where would you like to place your #{letter}? Enter a number between 1-9:"
    next_move = gets.chomp.to_i

    while move_taken?(next_move, taken_moves) || invalid_move?(next_move)
      if move_taken?(next_move, taken_moves)
        puts "#{@name}, that space is taken! Try another:"
        next_move = gets.chomp.to_i
      end
      if invalid_move?(next_move)
        puts "#{@name}, please enter a number that is between 1-9:"
        next_move = gets.chomp.to_i
      end
    end
    @moves.push(next_move)
    next_move
  end
end