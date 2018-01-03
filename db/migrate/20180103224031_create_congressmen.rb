class CreateCongressmen < ActiveRecord::Migration[5.1]
  def change
    create_table :congressmen do |t|
      t.string :name
      t.string :uid
      t.string :state
      t.string :house

      t.timestamps
    end
  end
end
