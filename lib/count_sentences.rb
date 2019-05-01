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


it  "returns the number of sentences in a string" do
  expect("one. two. three?".count_sentence).to eq(3)
end

it "returns zero if there are no sentences in a string" do
  expect("".count_sentences).to eq(0)
end

it "returns the number of sentences in a complex string" do
  complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
  expect(complex_string.count_sentences).to eq(4)
end
