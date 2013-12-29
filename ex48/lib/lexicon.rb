class Lexicon

Pair = Struct.new(:token, :key)

def scan(stuff)
    @words = stuff.split(" ")
    return analyze
end


def analyze

    hash = { "north" => :direction, "south" => :direction, "east" => :direction, "west" => :direction, 
            "go" => :verb, "stop" => :verb, "kill" => :verb, "eat" => :verb, 
            "the" => :stop, "in" => :stop, "of" => :stop, "from" => :stop, "at" => :stop, "it" => :stop, 
            "door" => :noun, "bear" => :noun, "princess" => :noun, "cabinet" => :noun}

    @words.map do |word|
        #hash.keys.include?(word) ? Pair.new(hash[word], word) : Pair.new(:error, word)
            begin
                Integer(word).to_s
                                    #Integer(word)
                                    #num = word.to_s
                                    #Pair.new(:number, num)
                Pair.new(:number, word)
            rescue ArgumentError => x
                if hash.keys.include?(word)
                    Pair.new(hash[word], word)
                else
                    Pair.new(:error, word)
                end
            end

       end
  end
end