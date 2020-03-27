class PigLatinizer
  attr_accessor :original_text, :final_text

  def initialize(text)
    @original_text = text
  end

  def translate
    text_arr = @original_text.split(" ")
    text_arr.collect do |word|
      self.pig_latin(word)
    end
  end

  def pig_latin(word)
    if word.downcase.chars[0] =~ /[aeiou]/
      word + "way"
    else
      if word.chars[1] =~ /[aeiou]/
        word.chars.rotate.join + "ay"
      else
        if word.chars[2] =~ /[aeiou]/
          word.chars.rotate(2).join + "ay"
        else
          if word.chars[3] =~ /[aeiou]/
            word.chars.rotate(3).join + "ay"
          end
        end
      end
    end
  end

  def convert
    @final_text = self.translate.join(" ")
  end

end
