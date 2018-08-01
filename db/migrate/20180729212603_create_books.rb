class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :desc
      t.string :down_link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
