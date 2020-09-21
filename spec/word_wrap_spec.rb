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

