class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    rand_num = rand(3)
    cpu_move = nil

    if rand_num == 0
      cpu_move = "rock"
    elsif rand_num == 1
      cpu_move = "paper"
    else
      cpu_move = "scissors"
    end

    if @user_move = "rock"
      if cpu_move == "rock"
        @result  = "tie!"
      end
      if cpu_move == "paper"
        @result = "lost"
      end
      if cpu_move == "scissors"
        @result = "won"
      end
    end

    if @user_move = "paper"
      if cpu_move == "rock"
        @result = "won"
      end
      if cpu_move == "paper"
        @result = "tie!"
      end
      if cpu_move == "scissors"
        @result = "lost"
      end
    end

    if @user_move = "scissors"
      if cpu_move == "rock"
        @result = "lost"
      end
      if cpu_move == "paper"
        @result = "won"
      end
      if cpu_move == "scissors"
        @result = "tie"
      end
    end


    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = cpu_move

    # @result = outcome

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
