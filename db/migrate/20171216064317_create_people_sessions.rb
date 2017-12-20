class CreatePeopleSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :people_sessions do |t|

      t.timestamps
    end
  end
end
