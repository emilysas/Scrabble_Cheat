@words = []

def open_file
    File.open("scrabble_dictionary.md", "r") do |infile|
      while (line = infile.gets)
        line.split(",").each do |word|
          @words << find_sev_lett_word(word) if find_sev_lett_word(word)
        end
      end
    end
      @words.each {|word| puts display(word)}
end

def find_sev_lett_word(word)
  if word.length <= 7
    return word
  end
end

def display(word)
  word.chars.to_a.permutation.map(&:join).uniq.each do 
    |word|  puts word
  end
end

open_file


