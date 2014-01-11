puts "welcome to Blackjack"

def calculate_total(cards) 
	# [['H', '3'], ['S', '5'], ... ]
	arr = cards.map{|e| e[1] }

	total = 0
	arr.each do |value|
		if value == "A"
			total += 11

		elsif value.to_i = 0
			total = total + 10
		else 
			total += value.to_i
		end


end

#correct for Aces

arr.select{|e| e == "A"}.count.times do
	if total > 21
		total -= 10
	end


if arr.include?("A") && total > 21
	total -=10

end


	total

end


suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'K', 'Q', 'A']



deck = suits.product(cards)

deck.shuffle!

# Deal cards

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop


dealertotal = calculate_total (dealercards)
mytotal = calculate_total(mycards)

# Show Cards 

puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}"
puts "You have #{mycards[0]} and #{mycards[1]}"

puts ""

puts "What would you like to do? 1) hit 2) stay"

hit_or_stay = gets.chomp



