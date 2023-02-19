

COLORS = {r: "red", b:"blue", y:"yellow", g:"green", w:"white", o:"orange"}


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
    generate_password
    #player guess 4 colors (using key values)

    #values are checked against computer key
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
    COLORS
end


def player_guess
    print "Input player guess: "
    guess = gets.chomp.split(",").map{|x| COLORS[x.to_sym]}
    return guess
end

print player_guess