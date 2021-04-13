# frozen_string_literal: true

require './lib/caesar_cipher.rb'

describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'encrypts a letter' do
      encrypt = CaesarCipher.new
      expect(encrypt.caesar_cipher('a', 1)).to eql('b')
    end
    it 'encrypts a word' do
      encrypt = CaesarCipher.new
      expect(encrypt.caesar_cipher('apple', 1)).to eql('bqqmf')
    end
    it 'encrypts multiple words' do
      encrypt = CaesarCipher.new
      expect(encrypt.caesar_cipher('Upeez f vn sbup.', 25)).to eql('Toddy e um rato.')
    end
    it 'shifts entire alphabet' do
      encrypt = CaesarCipher.new
      expect(encrypt.caesar_cipher('z', 1)).to eql('a')
    end
  end
end
