class CreateMovs < ActiveRecord::Migration[5.2]
  def change
    create_table :movs do |t|
      t.string :title
      t.integer :date
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
