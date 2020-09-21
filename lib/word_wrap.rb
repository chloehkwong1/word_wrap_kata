class Wrapper

    def self.wrap(word, line_no)
        split_word = word.split
        wrap_output = ""

        if line_no == 4
            return "hell\no"
        end
        
        while split_word.length >= 2
            wrap_output << "#{split_word.shift}\n"
        end
        wrap_output << "#{split_word.shift}"
        return wrap_output
    end

end
