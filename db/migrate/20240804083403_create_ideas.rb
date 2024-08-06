class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :category
      t.text :body
      t.text :tag
      t.integer :user_id
      t.timestamps
    end
  end
end
