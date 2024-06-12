print "Enter code to encode: "
string_encode = gets.chomp

print "Enter value to encode string: "
value_encode = gets.chomp.to_i

# create a ceasar cipher function
def ceasar_cipher(string, value)
    encoded_string = ""

    string.chars.each do |char|

        # check if char is a lowercase letter
        if char =~ /[a-z]/i
            ascii_value = char.ord

            new_ascii_value = (ascii_value + value) % 26 + 'a'.ord

            encoded_string << new_ascii_value.chr

        # check if char is an uppercase letter
        elsif char =~ /[A-Z]/i
            ascii_value = char.ord
            new_ascii_value = (ascii_value + value) % 26 + 'A'.ord

            encoded_string << new_ascii_value.chr

        # if char is not a letter, just add it to the encoded string
        else
            encoded_string << char
        end
    end

    # return the encoded string
    return encoded_string
end


puts ceasar_cipher(string_encode, value_encode)
