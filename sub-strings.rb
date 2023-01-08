# function substrings accepts two arguments: words (string)
# and a dictionary (array)

# set words to lowercase
# split words and store in words array
# for each substring element in dictionary: (use map method)
    # set substring to lowercase
# for each word in words array: (use tally method)
    # for each substring element in dictionary:
        # check if word includes that substring

# return hash with counts of substrings

def substrings(words, dictionary)
    counts = Hash.new(0)
    words_l = words.downcase
    dictionary.select do |substring|
        substring_l = substring.downcase
        if words_l.include?(substring_l)
            counts[substring_l] += 1
        end
    end
    counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)