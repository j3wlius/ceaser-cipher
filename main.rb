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
            lowercase_ascii_value = char.ord
            new_lowercase_ascii_value = lowercase_ascii_value + value

            # check if new ascii value is greater than 'z'
            if new_lowercase_ascii_value >= 'z'.ord
                new_lowercase_ascii_value = new_lowercase_ascii_value - 'z'.ord + 'a'.ord
                encoded_string << new_lowercase_ascii_value.chr

            else
                encoded_string << new_lowercase_ascii_value.chr
            end

        # check if char is an uppercase letter
        elsif char =~ /[A-Z]/i
            uppercase_ascii_value = char.ord
            new_uppercase_ascii_value = uppercase_ascii_value + value

            # check if new ascii value is greater than 'z'
            if new_uppercase_ascii_value >= 'Z'.ord
                new_uppercase_ascii_value = new_uppercase_ascii_value - 'Z'.ord + 'A'.ord
                encoded_string << new_uppercase_ascii_value.chr

            else
                encoded_string << new_uppercase_ascii_value.chr
            end

        # if char is not a letter, just add it to the encoded string
        else
            encoded_string << char
        end
    end

    # return the encoded string
    return encoded_string
end


puts ceasar_cipher(string_encode, value_encode)
