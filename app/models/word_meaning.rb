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
class WordMeaning < ApplicationRecord
  belongs_to :word

  validates :content, presence: true, uniqueness: {scope: %i[word_id]}
end
