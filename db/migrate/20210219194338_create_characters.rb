class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name, null:false
      t.string :color
      t.string :catchphrase, null:false
      t.string :species
    end
  end
end
