class Wrapper

    def self.wrap(word, line_no)
        split_word = word.split
        wrap_output = ""

        while split_word.length >= 2
            #puts "split_word: #{split_word}"
            wrap_output << "#{split_word.shift}\n"
            #puts "wrap_output: #{wrap_output}"
        end
        wrap_output << "#{split_word.shift}"
        return wrap_output
    end

end
