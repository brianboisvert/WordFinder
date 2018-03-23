class CreateRhymes < ActiveRecord::Migration[5.1]
  def change
    create_table :rhymes do |t|
      t.string :word

      t.timestamps
    end
  end
end
