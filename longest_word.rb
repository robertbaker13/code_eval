class LongestWord
  attr_reader :solution

  def initialize(filename)
    @input = []
    File.open(filename) { |file| file.each { |line| @input << line.chomp } }
    @solution = @input.map { |line| solve(line) }
  end

  def solve(sentence)
    longest_word = ""
    sentence.split.each do |word|
      longest_word = word if word.length > longest_word.length
    end
    longest_word
  end
end

puts LongestWord.new(ARGV[0]).solution