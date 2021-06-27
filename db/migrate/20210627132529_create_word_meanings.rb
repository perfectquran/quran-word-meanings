class CreateWordMeanings < ActiveRecord::Migration[6.1]
  def change
    create_table :word_meanings do |t|
      t.references :word, null: false, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
