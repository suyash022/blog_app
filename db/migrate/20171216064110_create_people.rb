class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end
end
