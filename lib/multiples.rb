# Si on liste tous les entiers naturels strictement inférieurs à 11 et qui sont multiples de 3 ou 5, on obtient 3, 5, 6, 9 et 10. La somme de ces nombres est égale à 33.
# => Trouve la somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5.

def is_multiple_of_3_or_5?(n)
 return  n % 3 == 0 || n % 5 == 0
end

def sum_of_3_or_5_multiples(final_number)

sumup = []
	if final_number >= 0 == true
		(0..final_number-1).each do |number|
			if is_multiple_of_3_or_5?(number) == true
				sumup << number
			end
		end
		return sumup.sum
	else
		return "Ce n'est pas un chiffre"
	end	

end	


def perform
		puts "enter"
	final_number = gets.chomp.to_i
	sum_of_3_or_5_multiples(final_number)	
end

perform