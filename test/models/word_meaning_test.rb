# == Schema Information
#
# Table name: word_meanings
#
#  id         :bigint           not null, primary key
#  content    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  word_id    :bigint           not null
#
# Indexes
#
#  index_word_meanings_on_word_id  (word_id)
#
# Foreign Keys
#
#  fk_rails_...  (word_id => words.id)
#
require "test_helper"

class WordMeaningTest < ActiveSupport::TestCase
  def setup
    @word_meaning = word_meanings(:one)
  end

  test "sanity" do
    assert @word_meaning.valid?
  end

  test "word" do
    assert_equal words(:one), @word_meaning.word
  end

  test "presence of content" do
    @word_meaning.content = ""
    assert_not @word_meaning.valid?
  end

  test "uniqueness of content scoped to word" do
    assert word_meanings(:two).valid?
    assert_equal words(:one), word_meanings(:two).word
    @word_meaning.content = word_meanings(:two).content
    assert_not @word_meaning.valid?
  end
end
