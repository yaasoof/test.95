class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
  def down
    drop_table
    
  end
end
