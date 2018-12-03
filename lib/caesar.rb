def caesar_decode(string, offset)
    alpha_low = [*('a'..'z')]
    alpha_up = [*('A'..'Z')]
    
    
    string.split("").collect do |x|
    if (alpha_low.index(x) != nil || alpha_up.index(x) != nil)
        if x == x.downcase
            alpha_low[(alpha_low.index(x).to_i - offset.to_i)%26]
        elsif x == x.upcase
            alpha_up[(alpha_up.index(x).to_i - offset.to_i)%26]
        else
            x
        end
    else
    x
    end
    
    
    end.join
end

def caesar_encode(string, offset)
    alpha_low = [*('a'..'z')]
    alpha_up = [*('A'..'Z')]
    
    
    string.split("").collect do |x|
    if (alpha_low.index(x) != nil || alpha_up.index(x) != nil)
        if x == x.downcase
            alpha_low[(alpha_low.index(x).to_i + offset.to_i)%26]
        elsif x == x.upcase
            alpha_up[(alpha_up.index(x).to_i + offset.to_i)%26]
        else
            x
        end
    else
    x
    end
    
    
    end.join
end