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

  end
end
