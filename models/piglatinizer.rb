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
    if word.chars.first =~ /[aeiou]/
      word + "way"
    else
      if word.
    end
  end

  def convert

  end

end
