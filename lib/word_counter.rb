
#     le corpus, string dans lequel tu devras checker le nombre d'occurrences de différents strings
#     le dictionnaire, une array de mots (strings) qui seront recherchés dans le corpus

# La fonction devra renvoyer le nombre d'occurrences de chaque mot du dictionnaire dans le corpus sous la forme d'un hash. Ainsi :


# > word_counter("below", dictionary)
# => {"below"=>1, "low"=>1}
# > word_counter("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

def word_counter(string,dictionary)
	word_count = []
	
	for n in 0..(dictionary.length-1) do
		word_count << string.downcase.scan(dictionary[n]).count	
	end
	final = dictionary.zip(word_count).to_h
	print final.select {|k,v| v > 0}
end



def create_array

insult = []

File.foreach('insult.txt') do |line|  
line.gsub!(/\n/,"")
 insult << line

end

return insult


end


def perform

string = File.read('book.txt')
dictionary = create_array
word_counter(string,dictionary)

end

perform