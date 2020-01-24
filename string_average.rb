ZERO_TO_NINE = %w(zero one two three four five six seven eight nine)

def string_average(string_of_numbers)
	numbers = string_of_numbers.split(' ')

	if numbers.empty? || numbers.any? { |number| !ZERO_TO_NINE.include?(number) }
		return 'n/a'
	end

	integers = numbers.map! { |num| num_to_int(num) }
	sum = integers.reduce(&:+)
	average = sum / integers.count
	int_to_num(average)
end

private

def num_to_int(num)
	ZERO_TO_NINE.index(num)
end

def int_to_num(int)
	ZERO_TO_NINE[int]
end