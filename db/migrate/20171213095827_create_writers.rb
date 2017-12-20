class CreateWriters < ActiveRecord::Migration[5.1]
  def change
    create_table :writers do |t|
      t.string :book
      t.text :author

      t.timestamps
    end
  end
end
