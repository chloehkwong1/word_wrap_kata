require_relative '../lib/word_wrap'

# wrap_expected_output = {
#     "" => ["",""],
#     "hello" => ["hello",5],
#     "hello\nworld" => ["hello world", 5],
#     "hello\nderek" => ["hello derek", 5],
#     "hello\nderek\nfives" => ["hello derek fives", 5]
# }

#wrap_expected_output.each do |output, input|

    describe 'wrap function works' do
        it 'returns an empty string when given nothing' do
            expect(Wrapper.wrap("", "")).to eq("")
        end

    end

    describe '1 word input that is same length as column' do
        it 'returns "hello" on one line when the column number is 5' do
            expect(Wrapper.wrap("hello", 5)).to eq("hello")
        end

        
    end

    describe '2 word input where one word is the same length as column' do
        it 'returns "hello world" on two lines when the column number is 5' do
            expect(Wrapper.wrap("hello world", 5)).to eq("hello\nworld")
        end

        it 'returns "hello derek" on two lines when the column number is 5' do
            expect(Wrapper.wrap("hello derek", 5)).to eq("hello\nderek")
        end
    end

    describe '3 word input where all words are the same length as column' do
        it 'returns "hello derek fives" on three lines when the column number is 5' do
            expect(Wrapper.wrap("hello derek fives", 5)).to eq("hello\nderek\nfives")
        end
    end

    describe '4 word input where all words are the same length as column' do
        it 'returns "hello derek fives" on four lines when the column number is 5' do
            expect(Wrapper.wrap("hello derek fives chloe", 5)).to eq("hello\nderek\nfives\nchloe")
        end
    end

    describe '10 word input where all words are the same length as column' do
        it 'returns "derek" on ten lines when the column number is 5' do
            expect(Wrapper.wrap("derek derek derek derek derek derek derek derek derek derek", 5)).to eq("derek\nderek\nderek\nderek\nderek\nderek\nderek\nderek\nderek\nderek")
        end
    end





#end