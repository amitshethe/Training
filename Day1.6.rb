require 'pry'
characterentry = ["a","b","c","d","a","b","c","d"]
charcount = Hash.new
characterentry.each do |i|
    binding.pry
    if charcount[i]
        charcount[i] += 1
    else
        charcount[i] = 1
    end
end
puts charcount

# names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
# counts = Hash.new(0)
# names.each { |name| counts[name] += 1 }

#     puts counts


    
