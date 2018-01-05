class CreateFollowings < ActiveRecord::Migration[5.1]
  def change
    create_table :followings do |t|
      t.references :user, index: true
      t.references :politician, index: true
      
      t.timestamps
    end
  end
end
