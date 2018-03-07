def dictionary
  dictionary_hash = {"Hello" => "hi",
                     "to" => "2",
                     "too" => "2",
                     "two" => "2",
                     "for" => "4",
                     "four" => "4",
                     "be" => "b",
                     "you" => "u",
                     "at" => "@",
                     "and" => "&"
 }
end

def word_substituter(string)
  short_tweet = []
  string.split(" ").each do |word| #makes into array and iterates over each word
    if dictionary.keys.include?(word.downcase)
      short_tweet.push(dictionary[word.downcase])
    else
      short_tweet.push(word)
    end
  end
  short_tweet.join(" ")
end


def bulk_tweet_shortener(tweet)
  tweet.each do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
