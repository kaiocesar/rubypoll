class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.text :description
      t.references :poll, null: false, foreign_key: true
      t.integer :votes, default: 0
      
      t.timestamps
    end
  end
end
