# function substrings accepts two arguments: a word (string)
# and a dictionary (array)

# create empty hash 'counts' with argument 0
# set word to lowercase
# for each substring element in dictionary:
    # set substring to lowercase
    # check if word includes that substring
        # add substring as key to counts

    # return counts

def substrings(word, dictionary)
    counts = Hash.new(0)
    word_l = word.downcase
    dictionary.select do |substring|
        substring_l = substring.downcase
        if word_l.include?(substring_l)
            counts[substring_l] += 1
        end
    end
    counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)