

COLORS = {r: "red", b:"blue", y:"yellow", g:"green", w:"white", o:"orange"}
guess_arr = []

def PlayGame

    print "Start with player or computer?"
    # game_mode = gets
    # if(game_mode == player){
    #     PlayerGame
    # end
    # }

end


def player_game
    #Computer generates random key
    password = generate_password
    #player guess 4 colors (using key values)
    guess = player_guess
    #values are checked against computer key
    #1. Check if values are included
    print(password)
    guess_key = generate_checks(guess, password)
    print(guess_key)
    #2. Check if values in right spot
    #values added as next line of array

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


def display_game
    
end


def player_guess
    print "Key is #{COLORS}. Input player guess: "
    guess = gets.chomp.split(",").map{|x| COLORS[x.to_sym]}
    return guess
end

def generate_checks(guess, password)
    guess_key = Array.new
    uniq_guess = guess.uniq
    for i in 0..uniq_guess.length - 1
        if(password.include?(uniq_guess[i])) 
            guess_key.push('w')
        end
    end

    for i in 0..guess.length - 1
        if(guess[i] == password[i])
            guess_key.pop()
            guess_key.unshift('r')
        end
    end
    return guess_key
end

player_game