class CreateHoroscopes < ActiveRecord::Migration
  def change
    create_table :horoscopes do |t|
      t.string :zodiac
      t.string :theme
      t.string :nouns
      t.string :mood
      t.string :characteristic
      t.text :general1
      t.text :general2
      t.text :general3
      t.text :love
      t.text :money

      t.timestamps null: false
    end
  end
end
