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
    new_array = self.split(/[!.?]/)
    no_empty_array = new_array.reject { |i| i.empty? }
    no_empty_array.count
 #   binding.pry
  end
end