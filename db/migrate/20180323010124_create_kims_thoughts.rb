class CreateKimsThoughts < ActiveRecord::Migration[5.1]
  def change
    create_table :kims_thoughts do |t|
      t.text :phrase
      t.string :image

      t.timestamps
    end
  end
end
