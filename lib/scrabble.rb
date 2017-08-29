module Scrabble
  class Scoring
    attr_reader :values

    VALUES = {
      1 => ["A", "E", "I", "O", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]
    }

    def self.score(input_word)
      input_letters = input_word.upcase.split("")
      score = 0
      input_letters.each do |letter|
        if VALUES[1].include? letter
          score += 1
        elsif VALUES[2].include? letter
          score += 2
        elsif VALUES[3].include? letter
          score += 3
        elsif VALUES[4].include? letter
          score += 4
        elsif VALUES[5].include? letter
          score += 5
        elsif VALUES[8].include? letter
          score += 8
        elsif VALUES[10].include? letter
          score += 10
        else
          raise ArgumentError.new "Invalid letter in word"
        end
      end
      return score
    end

    def self.highest_score_from(input_array)
      word_scores = []

      input_array.each do |word|
        word_scores << self.score(word)
      end
      greatest_score = word_scores.sort![-1]
      greatest_words = []
      input_array.each do |word|
        if self.score(word) == greatest_score
          greatest_words << word
        end
      end
      if greatest_words.length == 1
        return greatest_words[0]
      elsif

      end
    end

      def tie_breaker
        # if greatest_words.length
      end


    end#end of scoring
  end # end of module
