class Wrapper

    def self.wrap(word, line_no)
        split_word = word.split
        
        if split_word.length <= 1
            return word
        end
            "#{split_word[0]}\n#{split_word[1]}"
    end

end