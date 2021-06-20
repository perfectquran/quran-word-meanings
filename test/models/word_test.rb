# == Schema Information
#
# Table name: words
#
#  id              :bigint           not null, primary key
#  content         :string
#  letter_count    :integer
#  meaning_count   :integer
#  occurance_count :integer
#  reviewed        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class WordTest < ActiveSupport::TestCase
  def setup
    @word = words(:one)
  end

  test "sanity" do
    assert @word.valid?
  end

  test "self.sample" do
    sample_word = Word.sample

    assert sample_word.is_a?(Word)
  end
end
