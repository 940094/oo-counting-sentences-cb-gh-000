require 'pry'

class String

  def sentence?
    self.match?(/^.*\.$/) # call .match? on itself
  end

  def question?
    self.match?(/^.*\?$/)
  end

  def exclamation?
    self.match?(/^.*\!$/)
  end

  def count_sentences
    array = []
    self.split(/[.?]/) # https://stackoverflow.com/questions/19509307/split-string-by-multiple-delimiters
    array.length
  end
end
