class CreateWordInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :word_inputs do |t|
      t.string :word

      t.timestamps
    end
  end
end
