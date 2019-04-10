

def translate(string,chiffrement)
 array = string.split(//)

 puts array.map! {|x| 	if x == " "
 							x = " "
 						elsif x == x.upcase

	 						if (x.ord + chiffrement) > 90 == true
	 								(x.ord + chiffrement - 26).chr
	 						else (x.ord + chiffrement).chr 
	 						end
 						else x == x.downcase
 							if (x.ord + chiffrement) > 122 == true
 								(x.ord + chiffrement - 26).chr
 							else (x.ord + chiffrement).chr 
 							end
 						end
 																		}.join
 					
		
	
end
 	


def perform
translate("Jules CeSar",15)
end

perform

# si x.ord + chiffrement > 122 alors x.ord + chiffrement - 26
# # 97 a 122
 # puts array.map! {|x| (x.ord + chiffrement) > 122 ? (x.ord + chiffrement - 26).chr : (x.ord + chiffrement).chr }.join