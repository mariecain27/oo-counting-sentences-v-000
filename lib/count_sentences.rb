require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    new_array = complex_string.split(/[!.?]/)
    new_array.count 
    no_empty_array = new_array.reject { |i| i.empty? }
    no_empty_array.count
    binding.pry
  end
end