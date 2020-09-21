require_relative '../lib/word_wrap'

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
    it 'returns "hello derek fives" on two lines when the column number is 5' do
        expect(Wrapper.wrap("hello derek fives", 5)).to eq("hello\nderek\nfives")
    end
end