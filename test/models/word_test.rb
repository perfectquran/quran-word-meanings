require "test_helper"

class WordTest < ActiveSupport::TestCase
  def setup
    @word = words(:one)
  end

  test "sanity" do
    assert @word.valid?
  end
end
