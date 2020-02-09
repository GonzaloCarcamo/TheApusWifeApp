class CreateBreasts < ActiveRecord::Migration[5.2]
  def change
    create_table :breasts do |t|
      t.references :baby, foreign_key: true
      t.integer :quantify
      t.integer :duration

      t.timestamps
    end
  end
end
