require 'pry'

dictionary = {
hello: "hi",
to: "2",
two: "2",
too: "2",
for: "4",
four: "4",
be: "b",
you: "u",
at: "@",
and: "&"
}

def dictionary
  dictionary = {
  hello: "hi",
  to: "2",
  two: "2",
  too: "2",
  for: "4",
  four: "4",
  be: "b",
  you: "u",
  at: "@",
  and: "&"
}
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  tweet_arr.each_with_index do |word, i|
    if dictionary.keys.include?(word.downcase.to_sym)
      tweet_arr[i] = dictionary.values_at(word.downcase.to_sym)
    end
  end
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|t| puts word_substituter(t)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  output_tweet = []
  tweet = word_substituter(tweet)
  if tweet.length > 140
    tweet = tweet[0..139]
  end
  tweet
end