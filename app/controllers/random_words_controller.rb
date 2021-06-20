class RandomWordsController < ApplicationController
  def show
    @random_word = Word.sample
  end
end
