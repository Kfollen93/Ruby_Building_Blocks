require './lib/caesar_cipher.rb'

describe '#caesar' do
    it 'works with a single character' do
    expect(caesar('A', 5)).to eq('F')
    end

    it 'works with a string' do
        expect(caesar('Hello', 5)).to eq('Mjqqt')
    end

    it 'works with puncuation and does not shift' do
        expect(caesar('Hello!', 5)).to eq('Mjqqt!')
    end

    it 'works when looping from end of alphabet' do
        expect(caesar('z', 1)).to eq('a')
    end

    it 'works with all variations of lower case, upper case, and ignores symbols' do
        expect(caesar('!DoGs**are**COOL?', 5)).to eq('!ItLx**fwj**HTTQ?')
    end

    it 'works with negative shift' do
        expect(caesar('Hello', -5)).to eq('Czggj')
    end

end