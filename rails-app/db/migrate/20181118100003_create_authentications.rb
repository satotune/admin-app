class CreateAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications do |t|
      t.string :user_name
      t.string :user_number
      t.string :face_image

      t.timestamps
    end
  end
end
