class Wrapper

    def self.wrap(word, line_no)
        split_word = word.split

        if split_word.length <= 1
            return word
        end
        if split_word.length == 2
            return "#{split_word[0]}\n#{split_word[1]}"
        end
        if split_word.length == 3
            return "#{split_word[0]}\n#{split_word[1]}\n#{split_word[2]}"
        end
        if split_word.length == 4
            return "#{split_word[0]}\n#{split_word[1]}\n#{split_word[2]}\n#{split_word[3]}"
        end

    end

end