# accept and parse input file, converting to an array
file_name = ARGV[0]
fizz_buzz_array = []
File.open(file_name) do |file|
  file.each { |line| fizz_buzz_array << line.chomp }
end

# iterate through array, solving each line, and output solution


def find_solution(line)
  parsed_line = parse(line)
# => create array that contains all #s between 1 and N
  array = (1..parsed_line[2]).to_a
  solve_array(array, parsed_line[0], parsed_line[1]).join(" ")
end

# => iterate through array:
def solve_array(array, first_divider, second_divider)
  array.map do |number|
    make_replacements(number, first_divider, second_divider)
  end
end

def make_replacements(num, fizz, buzz)
  # declare empty string, 'replacement_string'
  replacement_string = ""
  # check for divisibilty by X - add an "F" if appropriate
  replacement_string += "F" if num % fizz == 0
  # check for divisibilty by Y - add a "B" if appropriate
  replacement_string += "B" if num % buzz == 0
  # replace value with replacement_string if replacement_string is no longer empty
  replacement_string.length > 0 ? replacement_string : num.to_s
end

# => extract terms (first_divider - X, second_divider - Y, limit - N)
def parse(fizz_buzz_input_line)
  fizz_buzz_input_line.split.map { |num| num.to_i }
end

# => print the array
puts fizz_buzz_array.map { |line| find_solution(line) }