

COLORS = {r: "red", b:"blue", y:"yellow", g:"green", w:"white", o:"orange"}
ANS = Array.new(4,'r')

def PlayGame

    print "Start with player or computer?"
    # game_mode = gets
    # if(game_mode == player){
    #     PlayerGame
    # end
    # }

end


def player_game
    guess_arr = []
    #Computer generates random key
    password = generate_password
    print(password)
    #values added as next line of array
    for i in 1..3
        #player guess 4 colors (using key values)
        guess = player_guess
        guess_arr.push(guess.map {|x| x[0]})
        display_game(guess_arr)
        #values are checked against computer key
        guess_key = generate_checks(guess, password)
        print guess_key
        print "\n\n"
        if (guess_key == ANS)
            print "You won!"
            break
        end
        
    end
    print "You lost. Key was #{password} \n"
end

def generate_password
    values = COLORS.values
    key= Array.new
    while key.length < 4
        val = values[rand(values.length)]
        if(!key.include?(val))
            key.push(val)
        end
    end
    return key
end


def display_game(matrix)
    
    for i in 0..matrix.length - 1
        for j in 0..3
            print(matrix[i][j])
            print " "
        end
        puts "\n"
    end

end


def player_guess
    print "Key is #{COLORS}.\nInput player guess: "
    guess = gets.chomp.split(",").map{|x| COLORS[x.to_sym]}
    return guess
end

def generate_checks(guess, password)
    guess_key = Array.new
    uniq_guess = guess.uniq

    #1. Check if values are included
    for i in 0..uniq_guess.length - 1
        if(password.include?(uniq_guess[i])) 
            guess_key.push('w')
        end
    end
    #2. Check if values in right spot
    for i in 0..guess.length - 1
        if(guess[i] == password[i])
            guess_key.pop()
            guess_key.unshift('r')
        end
    end
    return guess_key
end

player_game