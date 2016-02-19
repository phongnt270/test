class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :content
      t.integer :votes

      t.timestamps null: false
    end
  end
end
