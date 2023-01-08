# function substrings accepts two arguments: words (string)
# and a dictionary (array)

    # set words to lowercase
    # split words and store in words array
    # for each substring element in dictionary:
        # set substring to lowercase
    # for each word in words array:
        # for each substring element in dictionary:
            # check if word includes that substring

    # return hash with counts of substrings

def substrings(words, dictionary)
    words_l = words.downcase
    words_arr = words_l.split
    dictionary = dictionary.map { |substring| substring.downcase }

    counts = Hash.new(0)
    dictionary.each do |substring|
        substring_count = words_arr.count { |word| word.include?(substring) }
        if substring_count != 0
            counts[substring] = substring_count
        end
    end
    counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)