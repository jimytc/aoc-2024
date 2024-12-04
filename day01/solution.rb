input_file = "#{__dir__}/input1.txt"
puts "Loading #{input_file}"

# Load inputs
left_list, right_list = File.readlines(input_file).map { _1.split(/\s+/).map(&:to_i) }.transpose

# Part 1
puts left_list.sort.zip(right_list.sort).reduce(0) { |acc, pair| (acc + pair.reduce(:-).abs) }

# Part 2
tally_lookup = right_list.tally
puts left_list.map { _1 * tally_lookup[_1].to_i }.sum