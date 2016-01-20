#Check if words or phrases are palindromes without using the .reverse method
@input

def check_palindrome(input)
	is_a_palindrome = true
	arr = input.split('')
	count = arr.count

	arr.each_with_index do |val,i|
		if val != arr[count -i -1]
			is_a_palindrome = false
			break
		end
	end

	puts is_a_palindrome ? "This is IS a palindeome." : "This is is NOT a palindeome."	
	get_user_input

end

def get_user_input
	puts "Enter a word or phrase, type 'exit' to exit."
	@input = gets.strip.downcase.delete(' ')

	case @input
	when 'exit'
		puts 'Good bye'
	else
		check_palindrome(@input)
	end
end

get_user_input

