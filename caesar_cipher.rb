def caesar_cipher (string, shift)
  alphabet = ("a".."z").to_a
  uncrypted_message = string.split("")
  encrypted_message = []

  while shift > 26 do
    shift -= 26   
  end
  
  uncrypted_message.each do |i|
    alphabet.each_with_index do |letter, index|
      index += shift
      if index > 25
        index -= 26
      end
      if i.downcase == letter
        if i == i.upcase
          encrypted_message.push(alphabet[index].upcase)
        else
          encrypted_message.push(alphabet[index])
        end
      end
    end
    if i.match(/[^\w]/)
      encrypted_message.push(i)
    end
  end

  uncrypted_message = uncrypted_message.join("")
  encrypted_message = encrypted_message.join("")

  puts uncrypted_message
  puts encrypted_message
end

caesar_cipher("Upeez f vn sbup.", 25)