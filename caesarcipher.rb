def caesar_cipher(uncipheredString, shiftFactor)
	stringArray = uncipheredString.split("")
	caesarArray = []
	stringArray.each do |currentChar|
		newChar = currentChar
		if (currentChar.ord >= 65 && currentChar.ord <= 90) #A..Z
			if((currentChar.ord + shiftFactor) > 90)
				newChar = currentChar.ord + shiftFactor - 26
			else
				newChar = currentChar.ord + shiftFactor
			end
			newChar = newChar.chr
		elsif (currentChar.ord >= 91 && currentChar.ord <= 122) #a..z
			if((currentChar.ord + shiftFactor) > 122)
				newChar = currentChar.ord + shiftFactor - 26
			else
				newChar = currentChar.ord + shiftFactor
			end
			newChar = newChar.chr	
		end
		caesarArray.push(newChar)
	end
	puts caesarArray.join("")
end

puts "Please enter a string for caesar cipher:"
inputString = gets.chomp
puts "Please enter a shift factor:"
shiftFactor = gets.to_i
caesar_cipher(inputString, shiftFactor)
