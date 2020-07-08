class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
      @sequence_length = 1 
      @game_over = false 
      @seq = [] 
  end

  def play
      until @game_over 
        self.take_turn
      end 

      self.game_over_message
      self.reset_game 

  end

  def take_turn
      unless @game_over == true 
        self.show_sequence
        self.require_sequence
        p round_success_message
        self.sequence_length += 1 
  end

  def show_sequence
      self.add_random_color
      @seq.each {|color| p color}
  end

  def require_sequence
    puts "Repeat the sequence by entering the first letter of each color on a new line."
    @seq.each do |color| 
      user_input = gets.chomp 
      if user_input != color[0]
          @game_over = true 
          break 
      end 
    end 

    sleep 1 
  end

  def add_random_color
     @seq << COLORS.sample 
  end

  def round_success_message
     "Round successful. Here's the next sequence:"
  end

  def game_over_message
       puts "Game over! You made it #{@sequence_length - 1} rounds."
  end

  def reset_game
       @sequence_length = 1 
       @game_over = false 
       @seq = [] 
  end
end
