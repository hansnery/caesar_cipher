# frozen_string_literal: true

# :nodoc:
class CaesarCipher
  def caesar_cipher(string, shift)
    alphabet = ('a'..'z').to_a
    uncrypted_message = string.split('')
    encrypted_message = []

    shift -= 26 while shift > 26

    uncrypted_message.each do |i|
      alphabet.each_with_index do |letter, index|
        index += shift
        index -= 26 if index > 25
        if i.downcase == letter
          if i == i.upcase
            encrypted_message.push(alphabet[index].upcase)
          else
            encrypted_message.push(alphabet[index])
          end
        end
      end
      encrypted_message.push(i) if i.match(/[^\w]/)
    end

    uncrypted_message = uncrypted_message.join('')
    encrypted_message = encrypted_message.join('')

    puts "#{uncrypted_message}\n\n#{encrypted_message}"

    return encrypted_message
  end
end
