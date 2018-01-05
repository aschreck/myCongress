class CreatePoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :uid
      t.string :state
      t.string :house
      t.string :api_uri

      t.timestamps
    end
  end
end
