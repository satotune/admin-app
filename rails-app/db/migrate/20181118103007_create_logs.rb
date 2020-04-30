class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :user_name
      t.string :user_number
      t.datetime :check_time
      t.boolean :result
      t.string "status"

      t.timestamps
    end
  end
end
