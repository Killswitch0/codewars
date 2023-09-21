# DESCRIPTION:
#   Given a string of words, you need to find the highest scoring word.
#
#   Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
#
#   For example, the score of abad is 8 (1 + 2 + 1 + 4).
#
#   You need to return the highest scoring word as a string.
#
#   If two words score the same, return the word that appears earliest in the original string.
#
#   All letters will be lowercase and all inputs will be valid.

def high(x)
  alphabet = ('a'..'z').to_a

  word_scores = {}

  x.split.each do |word|
    word.chars.each do |c|
      word_scores[word] ||= 0
      word_scores[word] += alphabet.index(c) + 1
    end
  end

  max_score = word_scores.values.max
  word_scores.key(max_score)
end