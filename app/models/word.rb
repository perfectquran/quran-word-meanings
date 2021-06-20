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
class Word < ApplicationRecord
  def self.sample
    order(Arel.sql("RANDOM()")).limit(1).take
  end
end
