class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :content
      t.integer :letter_count
      t.integer :meaning_count
      t.integer :occurance_count
      t.boolean :reviewed

      t.timestamps
    end
  end
end
