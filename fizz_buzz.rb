# accept and parse input file, converting to an array
# iterate through array, solving each line, and output solution
# => extract terms (first_divider - X, second_divider - Y, limit - N)
# => create array that contains all #s between 1 and N
# => iterate through array:
    # declare empty string, 'replacement_string'
    # check for divisibilty by X - add an "F" if appropriate
    # check for divisibilty by Y - add a "B" if appropriate
    # replace value with replacement_string if replacement_string is no longer empty
# => print the array