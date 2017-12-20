class CreateSignUps < ActiveRecord::Migration[5.1]
  def change
    create_table :sign_ups do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
